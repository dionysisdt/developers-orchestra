package com.projectfuture.team0.developersorchestra.controller.repairs;

import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EditRepairController {
    private static final String REPAIR_ATTR = "repair";
    private static final String REPAIR_TYPES = "repairTypes";
    private static final String REPAIR_STATUS = "repairStatus";

    @Autowired
    private RepairService repairService;

    @PostMapping(value = "")
    public String deleteRepair(@PathVariable Long repairID) {
        repairService.deleteById(repairID);
        return "";
    }

    @GetMapping(value = "")
    public String editRepair(@PathVariable Long repairID, Model model) {
        RepairModel repairModel = repairService.findByRepairID(repairID).get();
        model.addAttribute(REPAIR_ATTR, repairModel);
        model.addAttribute(REPAIR_TYPES, RepairType.values());
        model.addAttribute(REPAIR_STATUS, RepairStatus.values());
        return "";
    }

    @PostMapping(value = "")
    public String editRepair(RepairModel repairModel) {
        repairService.updateRepair(repairModel);
        return "";
    }
}
