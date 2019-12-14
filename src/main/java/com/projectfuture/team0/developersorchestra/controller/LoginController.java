package com.projectfuture.team0.developersorchestra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/login")
    private String login() {
        return "pages/login";
    }

}
