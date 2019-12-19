package com.projectfuture.team0.developersorchestra.controller;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.LocalDate;
import java.util.List;


@Controller
public class HomeController {
    private static final String REPAIRS_LIST = "repairs";
    private static final String USERNAME = "username";

    @Autowired
    private RepairService repairService;

    @Autowired
    private OwnerService ownerService;

    /*
    @GetMapping(path = "/")
    public String home(Model model) {
        if (SecurityContextHolder.getContext().getAuthentication().getAuthorities().stream()
                .anyMatch(r -> r.getAuthority().equals("ADMIN"))) {
            return "redirect:/admin/home";
        }
        return "redirect:/owner/home";
    }
    */

    @GetMapping(value = "/admin/home")
    public String viewAdminHomePage(Model model) {
        List<RepairModel> repairs = repairService.findNext10Repairs(LocalDate.now());
        model.addAttribute(REPAIRS_LIST, repairs);
        return "homepages/admin";
    }

    @GetMapping(value = "/owner/home")
    public String repairs(Model model) {
        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Owner owner = ownerService.findByEmail(email).get();
        List<RepairModel> repairs = repairService.findByOwner(owner);
        model.addAttribute(REPAIRS_LIST, repairs);

        String username = owner.getFirstName() + " " + owner.getLastName();
        model.addAttribute(USERNAME, username);
        return "homepages/owner";
    }

}
