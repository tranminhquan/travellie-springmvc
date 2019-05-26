/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Date;

/**
 *
 * @author tranminhquan
 */
public class User {

    private String id;
    private String name;
    private String email;
    private String password;
    private Date dob;
    private String idCard;
    private String phone;
    private Integer gender;
    private String career;
    private String note;

    public User() {
        
    }
    
    public User(String ID, String Name, String Email, String Password, Date DoB, String IdCard, String Phone, Integer Gender, String Career) {
        this.id = ID;
        this.name = Name;
        this.email = Email;
        this.password = Password;
        this.dob = DoB;
        this.idCard = IdCard;
        this.phone = Phone;
        this.gender = Gender;
        this.career = Career;
    }

    public String getID() {
        return id;
    }

    public void setID(String ID) {
        this.id = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String Name) {
        this.name = Name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String Email) {
        this.email = Email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String Password) {
        this.password = Password;
    }

    public Date getDoB() {
        return dob;
    }

    public void setDoB(Date DoB) {
        this.dob = DoB;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String IdCard) {
        this.idCard = IdCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String Phone) {
        this.phone = Phone;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer Gender) {
        this.gender = Gender;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String Career) {
        this.career = Career;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String Note) {
        this.note = Note;
    }

}
