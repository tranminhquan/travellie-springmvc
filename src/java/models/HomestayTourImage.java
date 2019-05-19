/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Admin
 */
public class HomestayTourImage {

    private String id;
    private String homestayID;
    private String location;

    public HomestayTourImage() {

    }

    public HomestayTourImage(String Id, String homestayID, String location) {
        this.id = Id;
        this.homestayID = homestayID;
        this.location = location;
    }

    public String getId() {
        return id;
    }

    public void setId(String Id) {
        this.id = Id;
    }

    public String getHomestayID() {
        return homestayID;
    }

    public void setHomestayID(String homestayID) {
        this.homestayID = homestayID;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}
