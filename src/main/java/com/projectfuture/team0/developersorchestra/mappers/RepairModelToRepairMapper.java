package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairModelToRepairMapper {

    public Repair mapToRepair(RepairModel repairModel){

        Repair repair = new Repair();
        repair.setRepairID(repairModel.getRepairID());
        repair.setDate(repairModel.getDate());
        repair.setCost(repairModel.getCost());
        repair.setOwner(repairModel.getOwner());
        repair.setRepairAddress(repairModel.getRepairAddress());
        repair.setRepairType(repairModel.getRepairType() != null ? repairModel.getRepairType() : RepairType.DEFAULT);
        repair.setRepairStatus(repairModel.getRepairStatus() != null ? repairModel.getRepairStatus() : RepairStatus.DEFAULT);
        repair.setDescription(repairModel.getDescription());
        return repair;

    }
}
