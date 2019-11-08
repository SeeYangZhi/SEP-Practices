/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author yangz
 */
public class Car {
    private String brand;
    private String model;
    private Double price;
    private int wheels;

    public Car()
    {}

    public Car (String brand, String model, Double price, int wheels) {
    this.brand = brand;
    this.model = model;
    this.price = price;
    this.wheels = wheels;
    }

    
    public String getBrand(){
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getWheels() {
        return wheels;
    }

    public void setWheels(int wheels) {
        this.wheels = wheels;
    }
    
}
