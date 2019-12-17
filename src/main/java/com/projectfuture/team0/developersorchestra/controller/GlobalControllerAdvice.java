package com.projectfuture.team0.developersorchestra.controller;

import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import com.projectfuture.team0.developersorchestra.utils.GlobalAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


@ControllerAdvice(basePackages = "com.projectfuture.team0.developersorchestra.controller")
public class GlobalControllerAdvice {

    @Autowired
    private OwnerService ownerService;


    @ModelAttribute
    public void globalAttributes(Model model, @RequestParam(name = "userId", required = false, defaultValue = "0") String userId) {

        if (userIsLoggedIn(userId)) {
            SecurityContextHolder.getContext().getAuthentication().getName();
            String username = ownerService.findOwnerByOwnerID(Long.parseLong(userId)).map(OwnerModel::getFirstName).get();
            model.addAttribute(GlobalAttributes.USERNAME, username);
        }
    }

    private boolean userIsLoggedIn(String userId) {
        return Long.parseLong(userId) > 0;
    }

}
