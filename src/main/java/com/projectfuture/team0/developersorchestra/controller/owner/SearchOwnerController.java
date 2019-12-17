package com.projectfuture.team0.developersorchestra.controller.owner;

import com.projectfuture.team0.developersorchestra.forms.SearchOwnerForm;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class SearchOwnerController {

    private static final String OWNERS_LIST = "owners";

    @Autowired
    private OwnerService ownerService;

    @GetMapping("/admin/search/owner")
    public String searchOwner(ModelMap modelMap) {
        modelMap.addAttribute("searchOwnerForm", new SearchOwnerForm());
        return "owners/searchOwner";
    }

    @PostMapping("/admin/search/owner")
    public String searchOwner(@ModelAttribute("searchOwnerForm") SearchOwnerForm searchOwnerForm, ModelMap modelMap) {


        List<OwnerModel> owners = ownerService.findOwnerByTaxIDOrEmail(searchOwnerForm.getTaxID(), searchOwnerForm.getEmail());

        if (!owners.isEmpty()) {
            modelMap.addAttribute(OWNERS_LIST, owners);
        }

        return "owners/searchOwnerResults";
    }




}
