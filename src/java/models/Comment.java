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
public class Comment {
    private String id;
    private String homestayID;
    private String userName;
    private String userImage;
    private Date date;
    private String content;
    
    public Comment()
    {
        
    }

    public Comment(String id, String homestayID, String userName, String userImage, Date date, String content) {
        this.id = id;
        this.homestayID = homestayID;
        this.userName = userName;
        this.userImage = userImage;
        this.date = date;
        this.content = content;
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    
    
}
