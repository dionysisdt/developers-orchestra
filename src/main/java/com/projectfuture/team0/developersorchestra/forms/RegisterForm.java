package com.projectfuture.team0.developersorchestra.forms;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class RegisterForm {
    private static final String USERNAME_PATTERN = "^[a-zA-Z0-9]*$";

    private static final String PASSWORD_PATTERN = "^[a-zA-Z0-9@#$%^&]*$";

    private static final String MAIL_PATTERN = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,63}$";

    private static final int PASSWORD_MINSIZE = 6;

    @Pattern(regexp = USERNAME_PATTERN, message = "Invalid Pattern for username")
    private String username;

    @Pattern(regexp = PASSWORD_PATTERN, message = "Invalid Password")
    @Size(min = PASSWORD_MINSIZE, message = "Invalid Password Size")
    private String password;

    @Pattern(regexp = MAIL_PATTERN, message = "Invalid Mail")
    private String email;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}