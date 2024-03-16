package com.klu.jfsd.ams.service;

import java.util.List;

import com.klu.jfsd.ams.model.Repair;

public interface RepairService {
	Repair newbooking(Repair repair);
	public Repair viewbookingsbyid(int eid);
	List<Repair> getrepair(int userId);

}
