package com.klu.jfsd.ams.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.ams.model.Vehicles;


@Repository
public interface VehicleRepository extends JpaRepository<Vehicles, Integer> {
	 // Add any custom queries or methods if needed
}
