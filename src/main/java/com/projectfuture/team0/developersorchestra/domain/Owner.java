package com.projectfuture.team0.developersorchestra.domain;

import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "OWNER", uniqueConstraints = {@UniqueConstraint(columnNames = {"tax_id"}),
                                            @UniqueConstraint(columnNames = {"phone_number"}),
                                            @UniqueConstraint(columnNames = {"email"})})
public class Owner {

    private static final int MAX_NAME_LENGTH = 60;

    @Id
    @Column(name = "owner_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ownerID;

    @Column(name = "tax_id", nullable = false, length = 9)
    private String taxID;

    @Column(name = "fname", nullable = false, length = MAX_NAME_LENGTH)
    private String firstName;

    @Column(name = "lname", nullable = false, length = MAX_NAME_LENGTH)
    private String lastName;

    @Column(name = "address", nullable = false, length = MAX_NAME_LENGTH)
    private String ownerAddress;

    @Column(name = "phone_number", nullable = false, length = MAX_NAME_LENGTH)
    private String phoneNumber;

    @Column(name = "email", nullable = false, length = MAX_NAME_LENGTH)
    private String email;

    @Column(name = "password", nullable = false, length = MAX_NAME_LENGTH)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(name = "property_type", nullable = false, length = MAX_NAME_LENGTH)
    private PropertyType propertyType;

    @Enumerated(EnumType.STRING)
    @Column(name = "user_privileges", length = MAX_NAME_LENGTH)
    private UserPrivileges userPrivileges;

    @OneToMany(mappedBy = "owner", targetEntity = Repair.class, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH, CascadeType.REMOVE, CascadeType.DETACH})
    private List<Repair> repairs;

    public Owner(String taxID, String firstName, String lastName, String ownerAddress, String phoneNumber,
                 String email, String password, PropertyType propertyType, UserPrivileges userPrivileges, List<Repair> repairs) {

        this.taxID = taxID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.ownerAddress = ownerAddress;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.propertyType = propertyType;
        this.userPrivileges = userPrivileges;
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

    public List<Repair> getRepairs() {
        return repairs;
    }

    public void setRepairs(List<Repair> repairs) {
        this.repairs = repairs;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Owner{");
        sb.append("ownerID=").append(ownerID);
        sb.append(", taxID='").append(taxID).append('\'');
        sb.append(", firstName='").append(firstName).append('\'');
        sb.append(", lastName='").append(lastName).append('\'');
        sb.append(", ownerAddress='").append(ownerAddress).append('\'');
        sb.append(", phoneNumber='").append(phoneNumber).append('\'');
        sb.append(", email='").append(email).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", propertyType=").append(propertyType);
        sb.append(", userPrivileges=").append(userPrivileges);
        sb.append(", repairs=").append(repairs);
        sb.append('}');
        return sb.toString();
    }
}


