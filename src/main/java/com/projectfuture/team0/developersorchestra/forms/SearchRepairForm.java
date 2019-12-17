package com.projectfuture.team0.developersorchestra.forms;

import com.projectfuture.team0.developersorchestra.domain.Owner;

import java.util.Date;

public class SearchRepairForm {

    private String date;

    private Owner owner;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }
}
