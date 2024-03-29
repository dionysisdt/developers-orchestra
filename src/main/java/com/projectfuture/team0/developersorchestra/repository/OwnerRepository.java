package com.projectfuture.team0.developersorchestra.repository;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface OwnerRepository extends JpaRepository<Owner, Long> {

    Owner save(Owner owner);

    void deleteByOwnerID(Long ownerID);

    Optional<Owner> findOwnerByOwnerID(Long ownerID);

    Optional<Owner> findOwnerByTaxID(String taxId);

    Optional<Owner> findOwnerByPhoneNumber(String phoneNumber);

    Optional<Owner> findOwnerByEmail(String email);

    List<Owner> findOwnerByUserPrivileges(UserPrivileges userPrivileges);

    Optional<Owner> findOwnerByFirstNameAndLastName(String firstName, String lastName);

    List<Owner> findOwnerByOwnerAddress(String ownerAddress);

    Owner findByEmail(String username);

    List<Owner> findOwnerByTaxIDOrEmail(String taxID, String email);

}
