package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.enums.RepairType;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairToRepairModelMapper {

    public RepairModel mapToRepairModel(Repair repair){

        RepairModel repairModel = new RepairModel();
        repairModel.setRepairID(repair.getRepairID());
        repairModel.setDate(repair.getDate());
        repairModel.setCost(repair.getCost());
        repairModel.setOwner(repair.getOwner().getFirstName() + " " + repair.getOwner().getLastName());
        repairModel.setOwnerFirstName(repair.getOwner().getFirstName());
        repairModel.setOwnerLastName(repair.getOwner().getLastName());
        repairModel.setRepairAddress(repair.getRepairAddress());
        repairModel.setRepairType(repair.getRepairType() != null ? repair.getRepairType().getFullName() : RepairType.DEFAULT.getFullName());
        repairModel.setPropertyType(repair.getOwner().getPropertyType() != null ? repair.getOwner().getPropertyType().getFullName() : PropertyType.DEFAULT.getFullName());
        repairModel.setRepairStatus(repair.getRepairStatus() != null ? repair.getRepairStatus().getFullName() : RepairStatus.DEFAULT.getFullName());
        repairModel.setDescription(repair.getDescription());
        return repairModel;

    }

}
