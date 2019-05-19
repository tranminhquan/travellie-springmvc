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
public class HomestayOverview {

    private String id;
    private String homestayID;
    private String overview;

    public HomestayOverview() {

    }

    public HomestayOverview(String Id, String homestayID, String overview) {
        this.id = Id;
        this.homestayID = homestayID;
        this.overview = overview;
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

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

}
