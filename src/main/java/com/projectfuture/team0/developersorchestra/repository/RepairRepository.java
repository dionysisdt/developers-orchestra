package com.projectfuture.team0.developersorchestra.repository;

import com.projectfuture.team0.developersorchestra.domain.Owner;
import com.projectfuture.team0.developersorchestra.domain.Repair;
import com.projectfuture.team0.developersorchestra.model.RepairModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

public interface RepairRepository extends JpaRepository<Repair, Long> {

    Repair save(Repair repair);

    List<Repair> findRepairsByOwner(Owner owner);

    Optional<Repair> findByRepairID(Long repairID);

    //List<Repair> findRepairsByOwnerId(Long ownerID);

    List<Repair> findTop10ByDate(LocalDate date);

    List<Repair> findByDate(LocalDate date);

    List<Repair> findAll();

    List<Repair> findByOwner(Owner owner);

    List<Repair> findByRepairAddress(String repairAddress);

}
