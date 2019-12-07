package com.projectfuture.team0.developersorchestra.domain;

import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import org.hibernate.query.criteria.internal.expression.function.AggregationFunction;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "OWNER", uniqueConstraints = {@UniqueConstraint(columnNames = {"tax_id","phone_number","email"})})
public class Owner {

    private static final int MAX_NAME_LENGTH = 60;

    @Id
    @Column(name = "owner_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ownerID;

    @Column(name = "tax_id", nullable = false, length = 9)
    private String taxID;

    @Column(name = "fname", nullable = false, length = MAX_NAME_LENGTH)
    private String fName;

    @Column(name = "lname", nullable = false, length = MAX_NAME_LENGTH)
    private String lName;

    @Column(name = "address", nullable = false, length = MAX_NAME_LENGTH)
    private String address;

    @Column(name = "phone_number", nullable = false, length = MAX_NAME_LENGTH)
    private String phoneNumber;

    @Column(name = "email", nullable = false, length = MAX_NAME_LENGTH)
    private String email;

    @Column(name = "password", nullable = false, length = MAX_NAME_LENGTH)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(name = "property_type", nullable = false, length = MAX_NAME_LENGTH)
    private PropertyType propertyType;

    @OneToMany(mappedBy = "owner", targetEntity = Repair.class)
    private List<Repair> repairs;

    public Owner(String taxID, String fName, String lName, String address, String phoneNumber,
                 String email, String password, PropertyType propertyType, List<Repair> repairs){

        this.taxID = taxID;
        this.fName = fName;
        this.lName = lName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.propertyType = propertyType;
        this.repairs = repairs;

    }


    public Owner() {
    }

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

    public String getFName() {
        return fName;
    }

    public void setFName(String fName) {
        this.fName = fName;
    }

    public String getLName() {
        return lName;
    }

    public void setLName(String lName) {
        this.lName = lName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public List<Repair> getRepairs() {
        return repairs;
    }

    public void setRepairs(List<Repair> repairs) {
        this.repairs = repairs;
    }
}
