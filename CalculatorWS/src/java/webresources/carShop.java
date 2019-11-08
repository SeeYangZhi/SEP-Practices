/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webresources;

import entity.Car;
import java.sql.*;
import java.util.ArrayList;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
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
@Path("getCar")
public class carShop {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of carShop
     */
    public carShop() {
    }

    /**
     * Retrieves representation of an instance of webresources.carShop
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public String getXml() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    @GET
    @Path("getCar")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCar(@QueryParam("brand") String brand) {
        Connection conn = null;
        ArrayList<Car> carList = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String connURL = "jdbc:mysql://localhost/carshowroom?user=root&password=12345";
            conn = DriverManager.getConnection(connURL);
            String stmt = "SELECT * FROM car WHERE brand=?";
            PreparedStatement ps = conn.prepareStatement(stmt);
            ps.setString(1, brand);
            ResultSet rs = ps.executeQuery();

            Car c = null;
            carList = new ArrayList<Car>();

            while (rs.next()) {
                String b = rs.getString("brand");
                String m = rs.getString("model");
                double p = rs.getInt("price");
                int w = rs.getInt("wheels");
                c = new Car(b, m, p, w);
                carList.add(c);
            }

            GenericEntity<ArrayList<Car>> entity = new GenericEntity<ArrayList<Car>>(carList) {
            };

            return Response.status(200).entity(entity).build();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return Response.status(400).build();
    }

    /**
     * PUT method for updating or creating an instance of carShop
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
}
