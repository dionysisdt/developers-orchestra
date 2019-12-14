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
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class RepairServiceImpl implements RepairService {

    @Autowired
    private RepairRepository repairRepository;

    @Autowired
    private RepairToRepairModelMapper mapper;

    @Override
    public Repair createRepair(Repair repair) {
        return repairRepository.save(repair);
    }

    @Override
    public Repair updateRepair(RepairModel repairModel) {

        Repair originalRepair = repairRepository.findByRepairID(repairModel.getRepairID()).get();
        originalRepair.setRepairAddress(repairModel.getRepairAddress());
        originalRepair.setOwner(repairModel.getOwner());
        originalRepair.setDescription(repairModel.getDescription());
        originalRepair.setCost(repairModel.getCost());
        originalRepair.setDate(repairModel.getDate());
        originalRepair.setRepairType(repairModel.getRepairType());
        originalRepair.setRepairStatus(repairModel.getRepairStatus());
        return repairRepository.save(originalRepair);

    }

    @Override
    public void deleteById(Long repairID) {

        repairRepository.deleteById(repairID);

    }

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
    public List<RepairModel> findNext10Repairs(LocalDate date) {
        return repairRepository
                .findTop10ByRepairStatusNotAndDateAfterOrderByDate(RepairStatus.FINISHED, java.sql.Date.valueOf(date))
                .stream()
                .map(repair -> mapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> findByDate(LocalDate date) {
        return repairRepository
                .findByDate(java.sql.Date.valueOf(date))
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

    @Override
    public Optional<RepairModel> findByRepairID(Long repairID) {
        return repairRepository
                .findByRepairID(repairID)
                .map(repair -> mapper.mapToRepairModel(repair));
    }

}