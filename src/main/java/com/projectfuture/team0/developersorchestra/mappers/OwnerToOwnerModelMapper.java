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
        ownerModel.setFirstName(owner.getFirstName());
        ownerModel.setLastName(owner.getLastName());
        ownerModel.setPhoneNumber(owner.getPhoneNumber());
        ownerModel.setOwnerAddress(owner.getOwnerAddress());
        ownerModel.setEmail(owner.getEmail());
        ownerModel.setPassword(owner.getPassword());
        ownerModel.setPropertyType(owner.getPropertyType() != null ? owner.getPropertyType() : PropertyType.DEFAULT);
        ownerModel.setUserPrivileges(owner.getUserPrivileges() != null ? owner.getUserPrivileges() : UserPrivileges.DEFAULT);
        return ownerModel;

    }

}
