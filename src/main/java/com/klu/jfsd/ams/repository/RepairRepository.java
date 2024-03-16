package com.klu.jfsd.ams.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.ams.model.Repair;

@Repository
public interface RepairRepository extends JpaRepository<Repair, Integer> {

}
