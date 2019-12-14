package com.projectfuture.team0.developersorchestra.mappers;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.PropertyType;
import com.projectfuture.team0.developersorchestra.forms.OwnerForm;
import org.springframework.stereotype.Component;

@Component
public class OwnerFormToOwnerMapper {

    public Owner toOwner(OwnerForm ownerForm) {

        Owner owner = new Owner();
        //owner.setOwnerID(ownerForm.getOwnerID());
        owner.setTaxID(ownerForm.getTaxID());
        owner.setFirstName(ownerForm.getFirstName());
        owner.setLastName(ownerForm.getLastName());
        owner.setOwnerAddress(ownerForm.getOwnerAddress());
        owner.setPhoneNumber(ownerForm.getPhoneNumber());
        owner.setEmail(ownerForm.getEmail());
        owner.setPassword(ownerForm.getPassword());
        owner.setPropertyType(ownerForm.getPropertyType());
        return owner;

    }

}
