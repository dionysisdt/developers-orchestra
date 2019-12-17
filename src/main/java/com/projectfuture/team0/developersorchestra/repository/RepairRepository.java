package com.projectfuture.team0.developersorchestra.repository;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

public interface RepairRepository extends JpaRepository<Repair, Long> {

    Repair save(Repair repair);

    List<Repair> findRepairsByOwner(Owner owner);

    List<Repair> findTop10ByRepairStatusNotAndDateAfterOrderByDate(RepairStatus repairStatus, Date date);

    Optional<Repair> findByRepairID(Long repairID);

    List<Repair> findByDate(Date date);

    List<Repair> findAll();

    List<Repair> findByOwner(Owner owner);

    List<Repair> findByRepairAddress(String repairAddress);

    List<Repair> findRepairsByOwnerTaxIDOrDate(String taxID, Date date);

    List<Repair> getAllRepairs();

}
