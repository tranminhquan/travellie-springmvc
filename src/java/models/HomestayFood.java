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
public class HomestayFood {
    private String id;
    private String homestayID;
    private String location;
    private String description;

    public HomestayFood()
    {
    
    }
    
    public HomestayFood(String Id, String homestayID, String location, String description) {
        this.id = Id;
        this.homestayID = homestayID;
        this.location = location;
        this.description = description;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
