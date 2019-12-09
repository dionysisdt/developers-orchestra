package com.projectfuture.team0.developersorchestra.domain;

import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.awt.*;
import java.time.LocalDate;

@Entity
@Table(name = "REPAIR")
public class Repair {

    private static final int MAX_NAME_LENGTH = 60;

    @Id
    @Column(name = "repairID", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long repairID;

    @Column(name = "date", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    @Enumerated(EnumType.STRING)
    @Column(name = "repair_status", nullable = false, length = MAX_NAME_LENGTH)
    private RepairStatus repairStatus;

    @Enumerated(EnumType.STRING)
    @Column(name = "repair_type", nullable = false, length = MAX_NAME_LENGTH)
    private RepairType repairType;

    @Column(name = "cost", nullable = false)
    private Double cost;

    @Column(name = "address", nullable = false, length = MAX_NAME_LENGTH)
    private String repairAddress;

    @ManyToOne(optional = false, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
    @JoinColumn(name = "owner_id")
    private Owner owner;

    @Column(name = "description", length = MAX_NAME_LENGTH)
    private String description;

    public Repair(LocalDate date, RepairStatus repairStatus, RepairType repairType, Double cost,
                  String repairAddress, Owner owner, String description){

        this.date = date;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.cost = cost;
        this.repairAddress = repairAddress;
        this.owner = owner;
        this.description = description;

    }

    public Repair() {
    }

    public Long getRepairID() {
        return repairID;
    }

    public void setRepairID(Long repairID) {
        this.repairID = repairID;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
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

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Repair{");
        sb.append("repairID=").append(repairID);
        sb.append(", date=").append(date);
        sb.append(", repairStatus=").append(repairStatus);
        sb.append(", repairType=").append(repairType);
        sb.append(", cost=").append(cost);
        sb.append(", repairAddress='").append(repairAddress).append('\'');
        sb.append(", owner=").append(owner);
        sb.append(", description='").append(description).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
