package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import org.springframework.stereotype.Component;

@Component
public class OwnerToOwnerModelMapper {

    public OwnerModel mapToOwnerModel(Owner owner) {

        OwnerModel ownerModel = new OwnerModel();
        ownerModel.setOwnerID(owner.getOwnerID());
        ownerModel.setTaxID(owner.getTaxID());
        ownerModel.setfName(owner.getFName());
        ownerModel.setlName(owner.getLName());
        ownerModel.setPhoneNumber(owner.getPhoneNumber());
        ownerModel.setEmail(owner.getEmail());
        ownerModel.setPassword(owner.getPassword());
        ownerModel.setPropertyType(owner.getPropertyType() != null ? owner.getPropertyType().getFullName() : PropertyType.DEFAULT.getFullName());
        ownerModel.setUserPrivileges(owner.getUserPrivileges() != null ? owner.getUserPrivileges().getUserPrivileges() : UserPrivileges.DEFAULT.getUserPrivileges());
        return ownerModel;

    }

}