/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webresources;

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
@Path("webservices")
public class SimpleMath {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of SimpleMath
     */
    public SimpleMath() {
    }

    /**
     * Retrieves representation of an instance of webresources.SimpleMath
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Path("process")
    public Response process(@QueryParam("num1") int num1, @QueryParam("num2") int num2, @QueryParam("optr") String optr) {
        int result = 0;

        switch (optr) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                result = num1 / num2;
                break;
        }

        Integer resInt = new Integer(result);
        GenericEntity<Integer> myEntity = new GenericEntity<Integer>(resInt) {

        };
        return Response
                .status(200)
                .entity(myEntity)
                .build();
    }

    /**
     * PUT method for updating or creating an instance of SimpleMath
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
}
