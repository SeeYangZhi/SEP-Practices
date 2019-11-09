/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entity.Inventory;
import java.sql.*;
import java.util.ArrayList;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * REST Web Service
 *
 * @author yangz
 */
@Path("webservice")
public class HelloWS {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of HelloWS
     */
    public HelloWS() {
    }

    /**
     * Retrieves representation of an instance of services.HelloWS
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
     * PUT method for updating or creating an instance of HelloWS
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }

    @GET
    @Path("sayHello")
    @Produces("application/json")
    public String sayHello() {
        //TODO return proper representation object
        return "Hello there!";
    }

    @GET
    @Path("search")
    @Produces("application/json")
    public Response search() {
        String brand = "", model = "", functions = "";
        int quantity = 0, ID = 0;
        ArrayList<Inventory> InventoryList = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
            Connection conn = DriverManager.getConnection(connURL);
            String insertStr = "select * from inventory";
            PreparedStatement pstmt = conn.prepareStatement(insertStr);
            ResultSet rs = pstmt.executeQuery();
            Inventory i = null;
            InventoryList = new ArrayList<Inventory>();
            
            while (rs.next()) {
                ID = rs.getInt("ID");
                brand = rs.getString("brand");
                model = rs.getString("model");
                functions = rs.getString("functions");
                quantity = rs.getInt("quantity");
                i = new Inventory(ID, quantity, brand, model, functions);
                InventoryList.add(i);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        GenericEntity<ArrayList<Inventory>> entity = new GenericEntity<ArrayList<Inventory>>(InventoryList) {
        };
        return Response.status(200).entity(entity).build();
    }
}
