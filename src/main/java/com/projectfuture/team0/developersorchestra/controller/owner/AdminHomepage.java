package com.projectfuture.team0.developersorchestra.controller.owner;

import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
public class AdminHomepage {
    private static final String REPAIRS_LIST = "repairs";

    @Autowired
    private RepairService repairService;


    @GetMapping(value = "/admin/home")
    public String repairs(Model model) {
        List<RepairModel> repairs = repairService.findNext10Repairs(LocalDate.now());
        model.addAttribute(REPAIRS_LIST, repairs);
        return "AdminHome";
    }

}