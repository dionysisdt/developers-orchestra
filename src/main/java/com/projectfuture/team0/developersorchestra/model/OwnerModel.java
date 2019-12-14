package com.projectfuture.team0.developersorchestra.model;

import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;

public class OwnerModel {

    private Long ownerID;
    private String taxID;
    private String firstName;
    private String lastName;
    private String ownerAddress;
    private String phoneNumber;
    private String email;
    private String password;
    private PropertyType propertyType;
    private UserPrivileges userPrivileges;

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

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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

    public PropertyType getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(PropertyType propertyType) {
        this.propertyType = propertyType;
    }

    public UserPrivileges getUserPrivileges() {
        return userPrivileges;
    }

    public void setUserPrivileges(UserPrivileges userPrivileges) {
        this.userPrivileges = userPrivileges;
    }

    public OwnerModel() {

    }

    public OwnerModel(Long ownerID, String taxID, String firstName, String lastName,
                      String ownerAddress, String phoneNumber, String email, String password,
                      PropertyType propertyType, UserPrivileges userPrivileges) {

        this.ownerID = ownerID;
        this.taxID = taxID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.ownerAddress = ownerAddress;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.propertyType = propertyType;
        this.userPrivileges = userPrivileges;

    }
}
