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
public class HomestayTourDescription {
    private String id;
    private String homestayID;
    private String description;

    public HomestayTourDescription()
    {
    
    }
    
    public HomestayTourDescription(String Id, String homestayID, String description) {
        this.id = Id;
        this.homestayID = homestayID;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
