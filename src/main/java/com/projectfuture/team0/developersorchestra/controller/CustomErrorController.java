package com.projectfuture.team0.developersorchestra.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/error")
public class CustomErrorController {

    private static final String ERROR_STATUS_CODE = "errorStatusCode";

    @RequestMapping("/generic")
    public String handleError(Model model, HttpServletRequest request) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        model.addAttribute(ERROR_STATUS_CODE, status.toString());
        return "/pages/error";
    }


    @GetMapping(value = "/access-denied")
    public String accessDeniedPage(Model model) {
        return "/pages/access_denied";
    }
}