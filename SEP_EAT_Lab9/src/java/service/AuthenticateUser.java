/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import entity.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * REST Web Service
 *
 * @author yangz
 */
@Path("webservice")
public class AuthenticateUser {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of AuthenticateUser
     */
    public AuthenticateUser() {
    }

    /**
     * Retrieves representation of an instance of service.AuthenticateUser
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getJson() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of AuthenticateUser
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }

    @GET
    @Path("verifyUser")
    @Consumes("application/json")
    public Response verifyUser(@QueryParam("userid") String userid, @QueryParam("password") String password) {
        Connection conn = null;
        user user = null;
        String id = "", pw = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
            conn = DriverManager.getConnection(connURL);
            String insertStr = "select * from login where userid = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(insertStr);
            pstmt.setString(1, userid);
            pstmt.setString(2, password);
            // Step 5: Execute SQL Command
            ResultSet rs = pstmt.executeQuery();
            // Step 6: Process Result
            while (rs.next()) {
                user = new user();
                user.setId(rs.getString("userid"));
                user.setPw(rs.getString("password"));
            }
            // Step 7: Close connection
            GenericEntity<user> entity = new GenericEntity<user>(user) {
            };
            return Response.status(200).entity(entity).build();
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return Response.status(400).build();
        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
    }
}
