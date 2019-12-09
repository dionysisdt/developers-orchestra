package com.projectfuture.team0.developersorchestra.enums;

public enum PropertyType {

    DEFAULT("Undefined"),
    APARTMENT_BUILDING("Apartment Building"),
    VILLA("Villa"),
    COTTAGE("Cottage"),
    DETACHED_HOUSE("Detached House");

    private String fullName;

    PropertyType(String fullName) {
        this.fullName = fullName;
    }

    public String getFullName() {
        return fullName;
    }
}
