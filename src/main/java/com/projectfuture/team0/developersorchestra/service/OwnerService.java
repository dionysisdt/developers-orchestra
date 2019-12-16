package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;

import java.util.List;
import java.util.Optional;

public interface OwnerService {

    Owner createOwner(Owner owner);

    Owner updateOwner(OwnerModel ownerModel);

    void deleteByOwnerID(Long ownerID);

    Optional<OwnerModel> findOwnerByOwnerID(Long ownerID);

    Optional<OwnerModel> findOwnerByTaxID(String taxID);

    Optional<Owner> findByTaxID(String taxID);

    Optional<OwnerModel> findOwnerByPhoneNumber(String phoneNumber);

    Optional<OwnerModel> findOwnerByEmail(String email);

    List<OwnerModel> getAllOwners();

    List<OwnerModel> findOwnerByUserPrivileges(UserPrivileges userPrivileges);

    List<OwnerModel> findOwnerByFirstNameAndLastName(String firstName, String lastName);

    List<OwnerModel> findOwnerByOwnerAddress(String ownerAddress);

}
