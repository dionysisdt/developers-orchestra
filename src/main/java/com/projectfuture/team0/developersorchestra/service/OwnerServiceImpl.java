package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import com.projectfuture.team0.developersorchestra.mappers.OwnerToOwnerModelMapper;
import com.projectfuture.team0.developersorchestra.model.OwnerModel;
import com.projectfuture.team0.developersorchestra.repository.OwnerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    private OwnerRepository ownerRepository;
    
    @Autowired
    private OwnerToOwnerModelMapper mapper;

    @Override
    public List<OwnerModel> getAllOwners() {
        return ownerRepository
                .findAll()
                .stream()
                .map(owner -> mapper.mapToOwnerModel(owner))
                .collect(Collectors.toList());
    }

    @Override
    public Optional<OwnerModel> findOwner(Long ownerID) {
        return ownerRepository
                .findOwner(ownerID)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public Optional<OwnerModel> findOwnerByTaxID(String taxID) {
        return ownerRepository
                .findOwnerByTaxID(taxID)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public Optional<OwnerModel> findOwnerByEmail(String email) {
        return ownerRepository
                .findOwnerByEmail(email)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public Optional<OwnerModel> findOwnerByPhoneNumber(String phoneNumber) {
        return ownerRepository
                .findOwnerByPhoneNumber(phoneNumber)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public List<OwnerModel> findOwnerByUserPrivileges(UserPrivileges userPrivileges) {
        return ownerRepository
                .findOwnerByUserPrivileges(userPrivileges)
                .stream()
                .map(owner -> mapper.mapToOwnerModel(owner))
                .collect(Collectors.toList());
    }

    @Override
    public List<OwnerModel> findOwnerByFNameAndLName(String fName, String lName) {
        return ownerRepository
                .findOwnerByFNameAndLName(fName, lName)
                .stream()
                .map(owner -> mapper.mapToOwnerModel(owner))
                .collect(Collectors.toList());
    }

    @Override
    public List<OwnerModel> findOwnerByOwnerAddress(String ownerAddress) {
        return ownerRepository
                .findOwnerByOwnerAddress(ownerAddress)
                .stream()
                .map(owner -> mapper.mapToOwnerModel(owner))
                .collect(Collectors.toList());
    }

}
