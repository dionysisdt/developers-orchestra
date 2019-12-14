package com.projectfuture.team0.developersorchestra.forms;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;

import java.time.LocalDate;
import java.util.Date;

public class RepairForm {

    private Long repairID;

    private RepairStatus repairStatus;

    private Date date;

    private RepairType repairType;

    private Double cost;

    private String description;

    private String repairAddress;

    private Owner owner;

    public RepairStatus getRepairStatus() {
        return repairStatus;
    }

    public void setRepairStatus(RepairStatus repairStatus) {
        this.repairStatus = repairStatus;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public Long getRepairID() {
        return repairID;
    }

    public void setRepairID(Long repairID) {
        this.repairID = repairID;
    }
}