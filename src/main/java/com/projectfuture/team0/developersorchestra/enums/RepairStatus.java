package com.projectfuture.team0.developersorchestra.enums;

public enum RepairStatus {

    DEFAULT("Undefined"),
    PENDING("Pending"),
    IN_PROGRESS("In Progress"),
    FINISHED("Finished");

    private String fullName;

    RepairStatus(String fullName) {
        this.fullName = fullName;
    }

    public String getFullName() {
        return fullName;
    }

}
