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
public class HomestayRule {

    private String id;
    private String homestayID;
    private String rules;

    public HomestayRule() {

    }

    public HomestayRule(String Id, String homestayID, String rules) {
        this.id = Id;
        this.homestayID = homestayID;
        this.rules = rules;
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

    public String getRules() {
        return rules;
    }

    public void setRules(String rules) {
        this.rules = rules;
    }

}
