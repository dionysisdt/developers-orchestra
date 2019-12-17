package com.projectfuture.team0.developersorchestra.controller.owner;

import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PropertyOwnersController {

    private static final String OWNERS_LIST = "owners";

    @Autowired
    private OwnerService ownerService;

    @GetMapping(value = "/admin/owners")
    public String owners(Model model) {
        List<OwnerModel> owners = ownerService.getAllOwners();
        model.addAttribute(OWNERS_LIST, owners);
        return "pages/owners";
    }

}
