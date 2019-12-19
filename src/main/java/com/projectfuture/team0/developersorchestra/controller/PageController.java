package com.projectfuture.team0.developersorchestra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/")
    private String page() {
        return "pages/page";
    }

}
