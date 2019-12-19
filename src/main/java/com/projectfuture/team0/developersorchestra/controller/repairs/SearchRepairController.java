package com.projectfuture.team0.developersorchestra.controller.repairs;

import com.projectfuture.team0.developersorchestra.forms.SearchRepairForm;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class SearchRepairController {
    private static final String REPAIRS_LIST = "repairs";

    @Autowired
    private RepairService repairService;

    @GetMapping(value = "/admin/repair/search")
    public String searchRepair(ModelMap modelMap) {
        modelMap.addAttribute("searchRepairForm", new SearchRepairForm());
        return "repairs/searchRepairs";
    }

    @PostMapping(value = "/admin/repair/search")
    public String searchRepair(@ModelAttribute("searchRepairForm") SearchRepairForm searchRepairForm, ModelMap modelMap) {

        List<RepairModel> repairs = new ArrayList<>();


        if(searchRepairForm.getTaxID() != "") {
            String taxId = searchRepairForm.getTaxID();
            repairs = repairService.findRepairsByOwnerTaxID(taxId);
        }

        //System.err.println(searchRepairForm.);
        if(searchRepairForm.getDate() != null ) {
            try {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Date date = formatter.parse(searchRepairForm.getDate());
                repairs = repairService.findRepairsByDate(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        if (!repairs.isEmpty()) {
            modelMap.addAttribute(REPAIRS_LIST, repairs);
        }

        return "repairs/searchRepairResults";
    }
}


