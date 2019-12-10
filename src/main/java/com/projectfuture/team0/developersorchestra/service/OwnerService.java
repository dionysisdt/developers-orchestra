package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;

import java.util.List;
import java.util.Optional;

public interface OwnerService {

    Optional<OwnerModel> findOwner(Long ownerID);

    Optional<OwnerModel> findOwnerByTaxID(String taxID);

    Optional<OwnerModel> findOwnerByPhoneNumber(String phoneNumber);

    Optional<OwnerModel> findOwnerByEmail(String email);

    List<OwnerModel> getAllOwners();

    List<OwnerModel> findOwnerByUserPrivileges(UserPrivileges userPrivileges);

    List<OwnerModel> findOwnerByFirstNameAndLastName(String fName, String lName);

    List<OwnerModel> findOwnerByOwnerAddress(String ownerAddress);

}
