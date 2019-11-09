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
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * REST Web Service
 *
 * @author yangz
 */
@Path("searchInventory")
public class SearchInventoryResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of SearchInventoryResource
     */
    public SearchInventoryResource() {
    }

    /**
     * Retrieves representation of an instance of
     * webservices.SearchInventoryResource
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
     * PUT method for updating or creating an instance of
     * SearchInventoryResource
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }

    @GET
    @Path("search")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response searchInventory() {
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
            String insertStr = "select * from inventory";
            PreparedStatement pstmt = conn.prepareStatement(insertStr);
//            pstmt.setString(1, "%" + searchString + "%");
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

            GenericEntity<ArrayList<Inventory>> entity = new GenericEntity<ArrayList<Inventory>>(inventoryList) {
            };
            return Response.status(200).entity(entity).build();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return Response.status(200).build();
    }
}
