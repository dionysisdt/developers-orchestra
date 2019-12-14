package com.projectfuture.team0.developersorchestra.model;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;

import java.time.LocalDate;

public class RepairModel {

    private Long repairID;
    private Date date;
    private String repairStatus;
    private String repairType;
    private LocalDate date;
    private RepairStatus repairStatus;
    private RepairType repairType;
    private Double cost;
    private String repairAddress;
    private Owner owner;
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

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
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

    public RepairModel() {
    }

    public RepairModel(Date date, RepairStatus repairStatus, RepairType repairType, Double cost,
                       String repairAddress, Owner owner, String description, String propertyType) {

        this.date = date;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.cost = cost;
        this.repairAddress = repairAddress;
        this.owner = owner;
        this.description = description;
        this.propertyType = propertyType;

    }

}
