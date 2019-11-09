package entity;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author yangz
 */
public class Inventory {

    private int ID;
    private String Brand;
    private String Model;
    private String Functions;
    private int Quantity;

    public Inventory() {
    }

    public Inventory(int id, int quantity, String brand, String model, String functions) {
        this.Functions = functions;
        this.Brand = brand;
        this.Model = model;
        this.ID = id;
        this.Quantity = quantity;
    }

    public String getBrand() {
        return Brand;
    }

    public void setBrand(String Brand) {
        this.Brand = Brand;
    }

    public String getModel() {
        return Model;
    }

    public void setModel(String Model) {
        this.Model = Model;
    }

    public String getFunctions() {
        return Functions;
    }

    public void setFunctions(String Functions) {
        this.Functions = Functions;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

}
