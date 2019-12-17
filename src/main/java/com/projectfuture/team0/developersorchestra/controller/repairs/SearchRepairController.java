package com.projectfuture.team0.developersorchestra.controller.repairs;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.forms.SearchRepairForm;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class SearchRepairController {
    private static final String REPAIRS_LIST = "repairs";

    @Autowired
    private RepairService repairService;

    @GetMapping(value = "/admin/search/repairs")
    public String searchRepair(ModelMap modelMap) {
        modelMap.addAttribute("searchRepairForm", new SearchRepairForm());
        return "repairs/searchRepairs";
    }

    @PostMapping(value = "/admin/search/repairs")
    public String searchRepair(@ModelAttribute("searchRepairForm") SearchRepairForm searchRepairForm, ModelMap modelMap) {

        Date date = Date.parse(searchRepairForm.getDate(),
                DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        List<RepairModel> repairs = repairService.findRepairsByOwnerTaxIDOrDate(searchRepairForm.getOwner().getTaxID(), searchRepairForm.getDate());

        if (!repairs.isEmpty()) {
            modelMap.addAttribute(REPAIRS_LIST, repairs);
        }

        return "repairs/searchRepairResults";
    }
}


