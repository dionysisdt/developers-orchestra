package com.projectfuture.team0.developersorchestra.enums;

public enum UserPrivileges {

    DEFAULT("DEFAULT"),
    ADMIN("ADMIN"),
    USER("USER");

    private String userPrivileges;

    UserPrivileges(String userPrivileges) {
        this.userPrivileges = userPrivileges;
    }

    public String getUserPrivileges() {
        return userPrivileges;
    }

}
