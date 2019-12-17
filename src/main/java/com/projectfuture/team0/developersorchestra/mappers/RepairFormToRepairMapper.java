package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.forms.RepairForm;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

@Component
public class RepairFormToRepairMapper {

    @Autowired
    private OwnerService ownerService;

    public Repair toRepair(RepairForm repairForm){

        Repair repair = new Repair();
        repair.setRepairID(repairForm.getRepairID());
        repair.setRepairStatus(repairForm.getRepairStatus());
        repair.setRepairType(repairForm.getRepairType());
        repair.setCost(repairForm.getCost());
        repair.setDescription(repairForm.getDescription());
        repair.setRepairAddress(repairForm.getRepairAddress());

        //repair.setDate(repairForm.getDate());
        repair.setOwner(ownerService.findByTaxID(repairForm.getOwnerTaxId()).get());

        //repair.setOwner(ownerByOwnerID);

        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = formatter.parse(repairForm.getDate());
            repair.setDate(date);
        } catch (ParseException e){
            e.printStackTrace();
        }


        return repair;
    }
}
