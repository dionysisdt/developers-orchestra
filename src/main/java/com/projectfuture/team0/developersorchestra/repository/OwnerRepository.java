package com.projectfuture.team0.developersorchestra.repository;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface OwnerRepository extends JpaRepository<Owner, Long> {

    Optional<Owner> findOwner(Long ownerID);

    Optional<Owner> findOwnerByTaxID(String taxId);

    Optional<Owner> findOwnerByPhoneNumber(String phoneNumber);

    Optional<Owner> findOwnerByEmail(String email);

    List<Owner> findOwnerByUserPrivileges(UserPrivileges userPrivileges);

    List<Owner> findOwnerByFNameAndLName(String fName, String lName);

    List<Owner> findOwnerByOwnerAddress(String ownerAddress);

}
