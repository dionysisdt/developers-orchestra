package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.SecurityConfig;
import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.enums.UserPrivileges;
import com.projectfuture.team0.developersorchestra.forms.RegisterForm;
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

    @Autowired
    private SecurityConfig securityConfig;

    @Override
    public Owner createOwner(Owner owner) {
        owner.setPassword(securityConfig.passwordEncoder().encode(owner.getPassword()));
        owner.setUserPrivileges(UserPrivileges.USER);
        return ownerRepository.save(owner);
    };

    @Override
    public Owner updateOwner(OwnerModel ownerModel) {
        Owner originalOwner = ownerRepository.findOwnerByOwnerID(ownerModel.getOwnerID()).get();
        originalOwner.setTaxID(ownerModel.getTaxID());
        originalOwner.setFirstName(ownerModel.getFirstName());
        originalOwner.setLastName(ownerModel.getLastName());
        originalOwner.setEmail(ownerModel.getEmail());
        originalOwner.setOwnerAddress(ownerModel.getOwnerAddress());
        originalOwner.setPhoneNumber(ownerModel.getPhoneNumber());
        originalOwner.setPassword(securityConfig.passwordEncoder().encode(ownerModel.getPassword()));
        originalOwner.setPropertyType(ownerModel.getPropertyType());
        return ownerRepository.save(originalOwner);
    }

    @Override
    public void deleteByOwnerID(Long ownerID) {
        ownerRepository.deleteById(ownerID);
    }

    @Override
    public List<OwnerModel> getAllOwners() {
        return ownerRepository
                .findAll()
                .stream()
                .map(owner -> mapper.mapToOwnerModel(owner))
                .collect(Collectors.toList());
    }

    @Override
    public Optional<OwnerModel> findOwnerByOwnerID(Long ownerID) {
        return ownerRepository
                .findOwnerByOwnerID(ownerID)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public Optional<OwnerModel> findOwnerByTaxID(String taxID) {
        return ownerRepository
                .findOwnerByTaxID(taxID)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public Optional<Owner> findByTaxID(String taxID) {
        return ownerRepository.findOwnerByTaxID(taxID);
    }

    @Override
    public Optional<OwnerModel> findOwnerByEmail(String email) {
        return ownerRepository
                .findOwnerByEmail(email)
                .map(owner -> mapper.mapToOwnerModel(owner));
    }

    @Override
    public Optional<Owner> findByEmail(String email) {
        return ownerRepository.findOwnerByEmail(email);
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
    public List<OwnerModel> findOwnerByFirstNameAndLastName(String firstName, String lastName) {
        return ownerRepository
                .findOwnerByFirstNameAndLastName(firstName, lastName)
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

    @Override
    public List<OwnerModel> findOwnerByTaxIDOrEmail(String taxID, String email) {
        return ownerRepository
                .findOwnerByTaxIDOrEmail(taxID, email)
                .stream()
                .map(owner -> mapper.mapToOwnerModel(owner))
                .collect(Collectors.toList());
    }

}
