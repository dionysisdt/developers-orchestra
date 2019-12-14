package com.projectfuture.team0.developersorchestra.controller.owner;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.repository.OwnerRepository;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.swing.text.html.Option;
import java.util.List;
import java.util.Optional;

@Controller
public class OwnerHomePage {
    private static final String REPAIRS_LIST = "repairs";

    @Autowired
    private RepairService repairService;

    @Autowired
    private OwnerService ownerService;

    @GetMapping(value = "/owner/home")
    public String repairs(Model model) {
        List<RepairModel> repairs = repairService.findAll();
        model.addAttribute(REPAIRS_LIST, repairs);
        return "OwnerHome";
    }


}
