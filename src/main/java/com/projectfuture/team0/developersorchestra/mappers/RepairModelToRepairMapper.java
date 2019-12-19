package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import com.projectfuture.team0.developersorchestra.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RepairModelToRepairMapper {

    @Autowired
    private OwnerService ownerService;

    public Repair mapToRepair(RepairModel repairModel){

        Repair repair = new Repair();
        repair.setRepairID(repairModel.getRepairID());
        repair.setDate(repairModel.getDate());
        repair.setCost(repairModel.getCost());
        repair.setRepairAddress(repairModel.getRepairAddress());
        repair.setRepairType(repairModel.getRepairType() != null ? repairModel.getRepairType() : RepairType.DEFAULT);
        repair.setRepairStatus(repairModel.getRepairStatus() != null ? repairModel.getRepairStatus() : RepairStatus.DEFAULT);
        repair.setDescription(repairModel.getDescription());

        //This needs error handling (appropriate exception, exception handler, etc)
        Owner owner = ownerService.findByTaxID(repairModel.getOwnerTaxID()).get();

        repair.setOwner(owner);

        return repair;

    }
}
