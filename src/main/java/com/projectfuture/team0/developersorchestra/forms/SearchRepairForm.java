package com.projectfuture.team0.developersorchestra.forms;

import com.projectfuture.team0.developersorchestra.domain.Owner;

import java.util.Date;

public class SearchRepairForm {

    private Date date;

    private Owner owner;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }
}
