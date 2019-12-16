package com.projectfuture.team0.developersorchestra.controller.repairs;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

public class SearchRepairController {
    private static final String REPAIRS_LIST = "repairs";

    @Autowired
    private RepairService repairService;

    @GetMapping("admin/search/repair")
    public String searchRepair(ModelMap modelMap) {
        modelMap.addAttribute("searchRepairForm", new SearchRepairForm());
        return "repairs/searchRepair";
    }

    @PostMapping("admin/search/repair")
    public String searchRepair(@ModelAttribute("searchRepairForm") SearchRepairForm searchRepairForm, ModelMap modelMap) {


        List<RepairModel> repairs = repairService.findRepairsByOwner()
                        (searchRepairForm.(), searchRepairForm.getDate());

        if (!repairs.isEmpty()) {
            modelMap.addAttribute(REAPIRS_LIST, repairs);
        }

        return "repairs/searchRepairResults";
    }
}



