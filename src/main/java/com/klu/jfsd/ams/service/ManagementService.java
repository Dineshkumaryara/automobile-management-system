package com.klu.jfsd.ams.service;

import java.util.List;

import com.klu.jfsd.ams.model.Management;

public interface ManagementService {
	Management newbooking(Management management);
	public Management viewbookingsbyid(int eid);
	List<Management> getbookingDetails(int userId); 
}
