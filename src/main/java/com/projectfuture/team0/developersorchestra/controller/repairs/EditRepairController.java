package com.projectfuture.team0.developersorchestra.controller.repairs;

import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.repository.OwnerRepository;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class EditRepairController {
    private static final String REPAIR_ATTR = "repair";
    private static final String REPAIR_TYPES = "repairTypes";
    private static final String REPAIR_STATUS = "repairStatus";

    @Autowired
    private RepairService repairService;

    @Autowired
    private OwnerService ownerService;

    @PostMapping(value = "/admin/repair/{repairID}/delete")
    public String deleteRepair(@PathVariable Long repairID) {
        repairService.deleteById(repairID);
        return "redirect:/admin/repairs";
    }

    @GetMapping(value = "/admin/repair/{repairID}/edit")
    public String editRepair(@PathVariable Long repairID, Model model) {
        RepairModel repairModel = repairService.findRepairByRepairID(repairID).get();
        repairModel.setDateHTML(repairModel.getDate().toString());
        model.addAttribute(REPAIR_ATTR, repairModel);
        model.addAttribute(REPAIR_TYPES, RepairType.values());
        model.addAttribute(REPAIR_STATUS, RepairStatus.values());
        return "repairs/editRepair";
    }

    @PostMapping(value = "/admin/repair/edit")
    public String editRepair(RepairModel repairModel) {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = formatter.parse(repairModel.getDateHTML());
            repairModel.setDate(date);
        } catch (ParseException e){
            e.printStackTrace();
        }

        repairService.updateRepair(repairModel);
        return "redirect:/admin/repairs";
    }
}
