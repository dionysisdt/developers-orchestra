package com.projectfuture.team0.developersorchestra.controller;

import com.projectfuture.team0.developersorchestra.model.RepairModel;
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

    @Autowired
    private RepairService repairService;

    @GetMapping(path = "/")
    public String home(Model model) {
        if (SecurityContextHolder.getContext().getAuthentication().getAuthorities().stream()
                .anyMatch(r -> r.getAuthority().equals("ADMIN"))) {
            List<RepairModel> repairs = repairService.findNext10Repairs(LocalDate.now());
            model.addAttribute(REPAIRS_LIST, repairs);
            return "homepages/admin";
        }
        List<RepairModel> repairs = repairService.findAll();
        model.addAttribute(REPAIRS_LIST, repairs);
        return "homepages/owner";
    }

    @GetMapping(value = "/admin/home")
    public String viewAdminHomePage(Model model) {
        List<RepairModel> repairs = repairService.findNext10Repairs(LocalDate.now());
        model.addAttribute(REPAIRS_LIST, repairs);
        return "homepages/admin";
    }

    @GetMapping(value = "/owner/home")
    public String repairs(Model model) {
        List<RepairModel> repairs = repairService.findAll();
        model.addAttribute(REPAIRS_LIST, repairs);
        return "homepages/owner";
    }

}
