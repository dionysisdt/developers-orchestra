package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.forms.RepairForm;
import org.springframework.stereotype.Component;

@Component
public class RepairFormToRepairMapper {

    public Repair toRepair(RepairForm repairForm){

        Repair repair = new Repair();
        repair.setRepairID(repairForm.getRepairID());
        repair.setRepairStatus(repairForm.getRepairStatus());
        repair.setRepairType(repairForm.getRepairType());
        repair.setDate(repairForm.getDate());
        repair.setCost(repairForm.getCost());
        repair.setDescription(repairForm.getDescription());
        repair.setOwner(repairForm.getOwner());
        repair.setRepairAddress(repairForm.getRepairAddress());

        return repair;
    }
}
