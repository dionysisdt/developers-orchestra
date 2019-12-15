package com.projectfuture.team0.developersorchestra.controller.owner;

import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EditOwnerController {

    private static final String OWNER_ATTR = "owner";
    private static final String PROPERTY_TYPES = "propertyTypes";

    @Autowired
    private OwnerService ownerService;

    @PostMapping(value = "admin/{ownerID}/delete")
    public String deleteOwner(@PathVariable Long ownerID) {
        ownerService.deleteByOwnerID(ownerID);
        return "redirect:/admin/home";
    }

    @GetMapping(value = "/admin/{ownerID}/edit")
    public String editOwner(@PathVariable Long ownerID, Model model) {
        OwnerModel ownerModel = ownerService.findOwnerByOwnerID(ownerID).get();
        model.addAttribute(OWNER_ATTR, ownerModel);
        model.addAttribute(PROPERTY_TYPES, PropertyType.values());
        return "owners/editOwner";
    }

    @PostMapping(value = "/admin/edit")
    public String editOwner(OwnerModel ownerModel) {
        ownerService.updateOwner(ownerModel);
        return "redirect:/admin/home";
    }

}
