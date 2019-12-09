package com.projectfuture.team0.developersorchestra.model;

public class OwnerModel {

    private Long ownerID;
    private String taxID;
    private String fName;
    private String lName;
    private String ownerAddress;
    private String phoneNumber;
    private String email;
    private String password;
    private String propertyType;
    private String userPrivileges;

    public Long getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(Long ownerID) {
        this.ownerID = ownerID;
    }

    public String getTaxID() {
        return taxID;
    }

    public void setTaxID(String taxID) {
        this.taxID = taxID;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getOwnerAddress() {
        return ownerAddress;
    }

    public void setOwnerAddress(String ownerAddress) {
        this.ownerAddress = ownerAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    public String getUserPrivileges() {
        return userPrivileges;
    }

    public void setUserPrivileges(String userPrivileges) {
        this.userPrivileges = userPrivileges;
    }

    public OwnerModel() {

    }

    public OwnerModel(Long ownerID, String taxID, String fName, String lName,
                      String ownerAddress, String phoneNumber, String email, String password,
                      String propertyType, String userPrivileges) {

        this.ownerID = ownerID;
        this.taxID = taxID;
        this.fName = fName;
        this.lName = lName;
        this.ownerAddress = ownerAddress;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.propertyType = propertyType;
        this.userPrivileges = userPrivileges;

    }
}
