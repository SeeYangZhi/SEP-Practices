/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import javax.ejb.Stateless;

/**
 *
 * @author yangz
 */
@Stateless
public class Book {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    String ISBN;
    String Title;
    String Author;
    String Publisher;
    int Quantity;
    double Price;

    public Book() {
    }

    public Book(String ISBN, String Title, String Author, String Publisher, int Quantity, double Price) {
        this.ISBN = ISBN;
        this.Author = Author;
        this.Title = Title;
        this.Publisher = Publisher;
        this.Quantity = Quantity;
        this.Price = Price;
    }

    public String getISBN() {
        return ISBN;
    }

    public String getAuthor() {
        return Author;
    }

    public String getTitle() {
        return Title;
    }

    public String getPublisher() {
        return Publisher;
    }

    public int getQuantity() {
        return Quantity;
    }

    public Double getPrice() {
        return Price;
    }
}
