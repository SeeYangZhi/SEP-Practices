/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webservices;

import entity.Inventory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
@Path("getInventory")
public class search {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of search
     */
    public search() {
    }

    /**
     * Retrieves representation of an instance of webservices.search
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public String getXml() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of search
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }

    @GET
    @Path("searchInventory")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response searchInventory(@QueryParam("searchString") String searchString) {
        int ID = 0, quantity = 0;
        String brand = "", model = "", functions = "";
        ArrayList<Inventory> inventoryList = null;
        Inventory i = null;

        try {
            // Step1: Load JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            // Step 2: Define Connection URL
            String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
            // Step 3: Establish connection to URL
            Connection conn = DriverManager.getConnection(connURL);
            String insertStr = "select * from inventory where functions LIKE ?";
            PreparedStatement pstmt = conn.prepareStatement(insertStr);
            pstmt.setString(1, "%" + searchString + "%");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                ID = rs.getInt("ID");
                quantity = rs.getInt("quantity");
                brand = rs.getString("brand");
                model = rs.getString("model");
                functions = rs.getString("functions");
                i = new Inventory(ID, quantity, brand, model, functions);
                inventoryList.add(i);
            }
            conn.close();

            GenericEntity<ArrayList<Inventory>> entity = new GenericEntity<ArrayList<Inventory>>(inventoryList) {
            };
            return Response.status(200).entity(entity).build();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return Response.status(400).build();
    }

    @GET
    @Path("verifyUser")
    @Consumes("application/json")
    @Produces("application/json")
    public Response verifyUser(@QueryParam("userid") String userid, @QueryParam("password") String password) {
        Connection conn = null;
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
                id = userid;
                pw = password;
            }
            // Step 7: Close connection
            conn.close();

        } catch (Exception e) {
            System.err.println(e.getMessage());
            return Response.status(400).build();
        }

        if (userid.equals(id) && password.equals(pw)) {
            return Response.status(200).build();
        } else {
            return Response.status(400).build();
        }
    }
}
