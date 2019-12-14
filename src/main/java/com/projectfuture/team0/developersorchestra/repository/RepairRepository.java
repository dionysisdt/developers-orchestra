package com.projectfuture.team0.developersorchestra.repository;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.enums.RepairStatus;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;

public interface RepairRepository extends JpaRepository<Repair, Long> {

    List<Repair> findRepairsByOwner(Owner owner);

    List<Repair> findTop10ByRepairStatusNotAndDateAfterOrderByDate(RepairStatus repairStatus, Date date);

    List<Repair> findByDate(Date date);

    List<Repair> findAll();

    List<Repair> findByOwner(Owner owner);

    List<Repair> findByRepairAddress(String repairAddress);

}
