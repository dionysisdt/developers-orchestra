package com.projectfuture.team0.developersorchestra.enums;

public enum RepairType {

    PAINTING("Painting"),
    INSULATION("Insulation"),
    PLUMBING_WORKS("Plumbing works"),
    ELECTRICAL_WORKS("Electrical works");

    private String fullName;

    RepairType(String fullName) {
        this.fullName = fullName;
    }

    public String getFullName() {
        return fullName;
    }

}
