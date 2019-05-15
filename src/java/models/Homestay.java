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
    private String id;
    private String name;
    private String address;
    private String fullAddress;
    private String distance;
    private Integer numberPeople;
    private Integer numberDays;
    private Integer timeStart;
    private Integer timeEnd;
    private Integer rating;
    private String ownerImage;
    private String ownerName;
    private Date ownerDoB;
    private Integer ownerGender;
    private String ownerPhone;
    private String ownerCareer;
    private String video;
    private String roomTypeID;
    private String locationTypeID;
    private String vacationTypeID;
    private String cuisineID;
    private String lifeStyleID;
    private String note;
    
    public Homestay()
    {
        
    }

    public Homestay(String ID, String Name, String Address, String FullAddress, String Distance, Integer NumberPeople, Integer NumberDays, Integer TimeStart, Integer TimeEnd, Integer Rating, String OwnerImage, String OwnerName, Date OwnerDoB, Integer OwnerGender, String OwnerPhone, String OwnerCareer, String Video, String RoomTypeID, String LocationTypeID, String VacationTypeID, String CuisineID, String LifeStyleID) {
        this.id = ID;
        this.name = Name;
        this.address = Address;
        this.fullAddress = FullAddress;
        this.distance = Distance;
        this.numberPeople = NumberPeople;
        this.numberDays = NumberDays;
        this.timeStart = TimeStart;
        this.timeEnd = TimeEnd;
        this.rating = Rating;
        this.ownerImage = OwnerImage;
        this.ownerName = OwnerName;
        this.ownerDoB = OwnerDoB;
        this.ownerGender = OwnerGender;
        this.ownerPhone = OwnerPhone;
        this.ownerCareer = OwnerCareer;
        this.video = Video;
        this.roomTypeID = RoomTypeID;
        this.locationTypeID = LocationTypeID;
        this.vacationTypeID = VacationTypeID;
        this.cuisineID = CuisineID;
        this.lifeStyleID = LifeStyleID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFullAddress() {
        return fullAddress;
    }

    public void setFullAddress(String fullAddress) {
        this.fullAddress = fullAddress;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public Integer getNumberPeople() {
        return numberPeople;
    }

    public void setNumberPeople(Integer numberPeople) {
        this.numberPeople = numberPeople;
    }

    public Integer getNumberDays() {
        return numberDays;
    }

    public void setNumberDays(Integer numberDays) {
        this.numberDays = numberDays;
    }

    public Integer getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(Integer timeStart) {
        this.timeStart = timeStart;
    }

    public Integer getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(Integer timeEnd) {
        this.timeEnd = timeEnd;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public String getOwnerImage() {
        return ownerImage;
    }

    public void setOwnerImage(String ownerImage) {
        this.ownerImage = ownerImage;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    public Date getOwnerDoB() {
        return ownerDoB;
    }

    public void setOwnerDoB(Date ownerDoB) {
        this.ownerDoB = ownerDoB;
    }

    public Integer getOwnerGender() {
        return ownerGender;
    }

    public void setOwnerGender(Integer ownerGender) {
        this.ownerGender = ownerGender;
    }

    public String getOwnerPhone() {
        return ownerPhone;
    }

    public void setOwnerPhone(String ownerPhone) {
        this.ownerPhone = ownerPhone;
    }

    public String getOwnerCareer() {
        return ownerCareer;
    }

    public void setOwnerCareer(String ownerCareer) {
        this.ownerCareer = ownerCareer;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getRoomTypeID() {
        return roomTypeID;
    }

    public void setRoomTypeID(String roomTypeID) {
        this.roomTypeID = roomTypeID;
    }

    public String getLocationTypeID() {
        return locationTypeID;
    }

    public void setLocationTypeID(String locationTypeID) {
        this.locationTypeID = locationTypeID;
    }

    public String getVacationTypeID() {
        return vacationTypeID;
    }

    public void setVacationTypeID(String vacationTypeID) {
        this.vacationTypeID = vacationTypeID;
    }

    public String getCuisineID() {
        return cuisineID;
    }

    public void setCuisineID(String cuisineID) {
        this.cuisineID = cuisineID;
    }

    public String getLifeStyleID() {
        return lifeStyleID;
    }

    public void setLifeStyleID(String lifeStyleID) {
        this.lifeStyleID = lifeStyleID;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    
}
