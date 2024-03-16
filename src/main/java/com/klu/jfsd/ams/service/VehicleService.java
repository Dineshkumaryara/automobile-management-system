package com.klu.jfsd.ams.service;

import java.util.List;

import com.klu.jfsd.ams.model.Vehicles;

public interface VehicleService {
	Vehicles newvehicles(Vehicles vehicles);
	public Vehicles viewvehiclesbyid(int eid);
	public List<Vehicles> viewvehicles();
	List<Vehicles> getuservehicles(int userId);
}
