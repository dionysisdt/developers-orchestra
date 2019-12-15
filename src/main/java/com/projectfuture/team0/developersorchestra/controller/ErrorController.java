package com.projectfuture.team0.developersorchestra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController {

    @GetMapping(value = "/generic")
    public String errorPage(Model model) {
        return "pages/error";
    }

    @GetMapping(value = "/access-denied")
    public String accessDeniedPage(Model model) {
        return "/pages/access_denied";
    }


}