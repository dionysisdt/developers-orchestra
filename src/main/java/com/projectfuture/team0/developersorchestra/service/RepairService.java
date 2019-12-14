package com.projectfuture.team0.developersorchestra.service;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.model.RepairModel;

import java.time.LocalDate;
import java.util.List;

public interface RepairService {

    List<RepairModel> findRepairsByOwner(Owner owner);

    List<RepairModel> findNext10Repairs(LocalDate date);

    List<RepairModel> findByDate(LocalDate date);

    List<RepairModel> findAll();

    List<RepairModel> findByOwner(Owner owner);

    List<RepairModel> findByRepairAddress(String repairAddress);

}
