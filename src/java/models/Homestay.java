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
public class Homestay {
    private String ID;
    private String Name;
    private String Address;
    private String FullAddress;
    private String Distance;
    private Integer NumberPeople;
    private Integer NumberDays;
    private Integer TimeStart;
    private Integer TimeEnd;
    private Integer Rating;
    private String OwnerImage;
    private String OwnerName;
    private Date OwnerDoB;
    private Integer OwnerGender;
    private String OwnerPhone;
    private String OwnerCareer;
    private String Video;
    private String RoomTypeID;
    private String LocationTypeID;
    private String VacationTypeID;
    private String CuisineID;
    private String LifeStyleID;
    private String HomestayImageID;
    private String HomestayOverviewID;
    private String HomestayTourImageID;
    private String HomestayTourDescriptionID;
    private String HomestayFoodID;
    private String HomestayRuleID;
    private String Note;
    
    public Homestay()
    {
        
    }

    public Homestay(String ID, String Name, String Address, String FullAddress, String Distance, Integer NumberPeople, Integer NumberDays, Integer TimeStart, Integer TimeEnd, Integer Rating, String OwnerImage, String OwnerName, Date OwnerDoB, Integer OwnerGender, String OwnerPhone, String OwnerCareer, String Video, String RoomTypeID, String LocationTypeID, String VacationTypeID, String CuisineID, String LifeStyleID) {
        this.ID = ID;
        this.Name = Name;
        this.Address = Address;
        this.FullAddress = FullAddress;
        this.Distance = Distance;
        this.NumberPeople = NumberPeople;
        this.NumberDays = NumberDays;
        this.TimeStart = TimeStart;
        this.TimeEnd = TimeEnd;
        this.Rating = Rating;
        this.OwnerImage = OwnerImage;
        this.OwnerName = OwnerName;
        this.OwnerDoB = OwnerDoB;
        this.OwnerGender = OwnerGender;
        this.OwnerPhone = OwnerPhone;
        this.OwnerCareer = OwnerCareer;
        this.Video = Video;
        this.RoomTypeID = RoomTypeID;
        this.LocationTypeID = LocationTypeID;
        this.VacationTypeID = VacationTypeID;
        this.CuisineID = CuisineID;
        this.LifeStyleID = LifeStyleID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getFullAddress() {
        return FullAddress;
    }

    public void setFullAddress(String FullAddress) {
        this.FullAddress = FullAddress;
    }

    public String getDistance() {
        return Distance;
    }

    public void setDistance(String Distance) {
        this.Distance = Distance;
    }

    public Integer getNumberPeople() {
        return NumberPeople;
    }

    public void setNumberPeople(Integer NumberPeople) {
        this.NumberPeople = NumberPeople;
    }

    public Integer getNumberDays() {
        return NumberDays;
    }

    public void setNumberDays(Integer NumberDays) {
        this.NumberDays = NumberDays;
    }

    public Integer getTimeStart() {
        return TimeStart;
    }

    public void setTimeStart(Integer TimeStart) {
        this.TimeStart = TimeStart;
    }

    public Integer getTimeEnd() {
        return TimeEnd;
    }

    public void setTimeEnd(Integer TimeEnd) {
        this.TimeEnd = TimeEnd;
    }

    public Integer getRating() {
        return Rating;
    }

    public void setRating(Integer Rating) {
        this.Rating = Rating;
    }

    public String getOwnerImage() {
        return OwnerImage;
    }

    public void setOwnerImage(String OwnerImage) {
        this.OwnerImage = OwnerImage;
    }

    public String getOwnerName() {
        return OwnerName;
    }

    public void setOwnerName(String OwnerName) {
        this.OwnerName = OwnerName;
    }

    public Date getOwnerDoB() {
        return OwnerDoB;
    }

    public void setOwnerDoB(Date OwnerDoB) {
        this.OwnerDoB = OwnerDoB;
    }

    public Integer getOwnerGender() {
        return OwnerGender;
    }

    public void setOwnerGender(Integer OwnerGender) {
        this.OwnerGender = OwnerGender;
    }

    public String getOwnerPhone() {
        return OwnerPhone;
    }

    public void setOwnerPhone(String OwnerPhone) {
        this.OwnerPhone = OwnerPhone;
    }

    public String getOwnerCareer() {
        return OwnerCareer;
    }

    public void setOwnerCareer(String OwnerCareer) {
        this.OwnerCareer = OwnerCareer;
    }

    public String getVideo() {
        return Video;
    }

    public void setVideo(String Video) {
        this.Video = Video;
    }

    public String getRoomTypeID() {
        return RoomTypeID;
    }

    public void setRoomTypeID(String RoomTypeID) {
        this.RoomTypeID = RoomTypeID;
    }

    public String getLocationTypeID() {
        return LocationTypeID;
    }

    public void setLocationTypeID(String LocationTypeID) {
        this.LocationTypeID = LocationTypeID;
    }

    public String getVacationTypeID() {
        return VacationTypeID;
    }

    public void setVacationTypeID(String VacationTypeID) {
        this.VacationTypeID = VacationTypeID;
    }

    public String getCuisineID() {
        return CuisineID;
    }

    public void setCuisineID(String CuisineID) {
        this.CuisineID = CuisineID;
    }

    public String getLifeStyleID() {
        return LifeStyleID;
    }

    public void setLifeStyleID(String LifeStyleID) {
        this.LifeStyleID = LifeStyleID;
    }

    public String getHomestayImageID() {
        return HomestayImageID;
    }

    public void setHomestayImageID(String HomestayImageID) {
        this.HomestayImageID = HomestayImageID;
    }

    public String getHomestayOverviewID() {
        return HomestayOverviewID;
    }

    public void setHomestayOverviewID(String HomestayOverviewID) {
        this.HomestayOverviewID = HomestayOverviewID;
    }

    public String getHomestayTourImageID() {
        return HomestayTourImageID;
    }

    public void setHomestayTourImageID(String HomestayTourImageID) {
        this.HomestayTourImageID = HomestayTourImageID;
    }

    public String getHomestayTourDescriptionID() {
        return HomestayTourDescriptionID;
    }

    public void setHomestayTourDescriptionID(String HomestayTourDescriptionID) {
        this.HomestayTourDescriptionID = HomestayTourDescriptionID;
    }

    public String getHomestayFoodID() {
        return HomestayFoodID;
    }

    public void setHomestayFoodID(String HomestayFoodID) {
        this.HomestayFoodID = HomestayFoodID;
    }

    public String getHomestayRuleID() {
        return HomestayRuleID;
    }

    public void setHomestayRuleID(String HomestayRuleID) {
        this.HomestayRuleID = HomestayRuleID;
    }

    public String getNote() {
        return Note;
    }

    public void setNote(String Note) {
        this.Note = Note;
    }
    
    
}
