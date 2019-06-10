/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Booking {

    private String id;
    private String homestayID;
    private String userID;
    private String userName;
    private Date checkin;
    private Integer quantity;

    public Booking() {

    }

    public Booking(String id, String homestayID, String userID, Date checkin, Integer quantity) {
        this.id = id;
        this.homestayID = homestayID;
        this.userID = userID;
        this.checkin = checkin;
        this.quantity = quantity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHomestayID() {
        return homestayID;
    }

    public void setHomestayID(String homestayId) {
        this.homestayID = homestayId;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public Date getCheckin() {
        return checkin;
    }

    public void setCheckin(Date checkin) {
        this.checkin = checkin;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

}
