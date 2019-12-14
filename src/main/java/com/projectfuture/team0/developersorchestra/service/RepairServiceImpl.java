package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.mappers.RepairToRepairModelMapper;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import com.projectfuture.team0.developersorchestra.repository.RepairRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class RepairServiceImpl implements RepairService {

    @Autowired
    private RepairRepository repairRepository;

    @Autowired
    private RepairToRepairModelMapper mapper;

    @Override
    public List<RepairModel> findRepairsByOwner(Owner owner) {
        return repairRepository
                .findRepairsByOwner(owner)
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    /*
    @Override
    public List<RepairModel> findRepairsByOwnerId(Long ownerID) {
        return repairRepository.
                findRepairsByOwnerId(ownerID).
                stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }
    */

    @Override
    public List<RepairModel> findTop10ByDate(LocalDate date) {
        return repairRepository
                .findTop10ByDate(date)
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> findByDate(LocalDate date) {
        return repairRepository
                .findByDate(date)
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> findAll() {
        return repairRepository
                .findAll()
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> findByOwner(Owner owner) {
        return repairRepository
                .findByOwner(owner)
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> findByRepairAddress(String repairAddress) {
        return repairRepository
                .findByRepairAddress(repairAddress)
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

}