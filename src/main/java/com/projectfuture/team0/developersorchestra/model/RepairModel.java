package com.projectfuture.team0.developersorchestra.model;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;

import java.time.LocalDate;
import java.util.Date;

public class RepairModel {

    private Long repairID;
    private Date date;
    private String dateHTML;
    private RepairStatus repairStatus;
    private RepairType repairType;
    private Double cost;
    private String repairAddress;
    private String ownerFirstName;
    private String ownerLastName;
    private String ownerTaxID;
    private String description;
    private String propertyType;


    public Long getRepairID() {
        return repairID;
    }

    public void setRepairID(Long repairID) {
        this.repairID = repairID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public RepairStatus getRepairStatus() {
        return repairStatus;
    }

    public void setRepairStatus(RepairStatus repairStatus) {
        this.repairStatus = repairStatus;
    }

    public RepairType getRepairType() {
        return repairType;
    }

    public void setRepairType(RepairType repairType) {
        this.repairType = repairType;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public String getRepairAddress() {
        return repairAddress;
    }

    public void setRepairAddress(String repairAddress) {
        this.repairAddress = repairAddress;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    public String getDateHTML() { return dateHTML; }

    public void setDateHTML(String dateHTML) { this.dateHTML = dateHTML; }

    public String getOwnerFirstName() {
        return ownerFirstName;
    }

    public void setOwnerFirstName(String ownerFirstName) {
        this.ownerFirstName = ownerFirstName;
    }

    public String getOwnerLastName() {
        return ownerLastName;
    }

    public void setOwnerLastName(String ownerLastName) {
        this.ownerLastName = ownerLastName;
    }

    public String getOwnerTaxID() {
        return ownerTaxID;
    }

    public void setOwnerTaxID(String ownerTaxID) {
        this.ownerTaxID = ownerTaxID;
    }

    public RepairModel() {
    }

    public RepairModel(Long repairID, Date date, String dateHTML, RepairStatus repairStatus, RepairType repairType, Double cost, String repairAddress, String ownerFirstName, String ownerLastName, String ownerTaxID, String description, String propertyType) {
        this.repairID = repairID;
        this.date = date;
        this.dateHTML = dateHTML;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.cost = cost;
        this.repairAddress = repairAddress;
        this.ownerFirstName = ownerFirstName;
        this.ownerLastName = ownerLastName;
        this.ownerTaxID = ownerTaxID;
        this.description = description;
        this.propertyType = propertyType;
    }
}
