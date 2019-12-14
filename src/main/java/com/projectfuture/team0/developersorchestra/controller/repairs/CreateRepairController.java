package com.projectfuture.team0.developersorchestra.controller.repairs;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import com.projectfuture.team0.developersorchestra.forms.RepairForm;
import com.projectfuture.team0.developersorchestra.mappers.RepairFormToRepairMapper;
import com.projectfuture.team0.developersorchestra.mappers.RepairToRepairModelMapper;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

import static com.projectfuture.team0.developersorchestra.utils.GlobalAttributes.ERROR_MESSAGE;

@Controller
public class CreateRepairController {
    private static final String REPAIRS_FORM = "repairForm";
    private static final String REPAIR_TYPES = "repairTypes";
    private static final String REPAIR_STATUS = "repairStatus";

    @Autowired
    private RepairService repairService;

    @Autowired
    private RepairFormToRepairMapper mapper;

    @GetMapping(value = "repairs/create")
    public String repairsDynamic(Model model) {

        model.addAttribute(REPAIRS_FORM, new RepairForm());
        model.addAttribute(REPAIR_TYPES, RepairType.values());
        model.addAttribute(REPAIR_STATUS, RepairStatus.values());

        return "";
    }

    @PostMapping(value = "repairs/create")
    public String createRepairs(Model model, @Valid @ModelAttribute(REPAIRS_FORM)
            RepairForm repairForm, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            model.addAttribute(ERROR_MESSAGE, "an error occurred");
            return "";
        }

        Repair repair = mapper.toRepair(repairForm);
        repairService.createRepair(repair);
        return "";
    }
}
