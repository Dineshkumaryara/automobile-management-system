package com.klu.jfsd.ams.service;

import java.util.List;

import com.klu.jfsd.ams.model.Management;
import com.klu.jfsd.ams.model.Repair;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.model.Vehicles;

public interface UserService {
	
	public String adduser(User us);
	
	public User checkuserlogin(String username,String password);
	public User viewuserbyid(int eid);
	public String updateuser(User us);
	public String updatepassword(User us);

	  public String addvehicle(Vehicles vehicle);
	  
	  public List<Vehicles> getcustomervehicles(int customerId);
	  
	  public Vehicles viewvehiclebyid(int id);
	  
	  
	  public String management(Management management);
	  
	  public List<Management> getbookingdetails(int customerId);
	  
	  public Management viewbookingdetails(int id);
	  
	  
	  public String repair(Repair repair);
	  
	  public List<Repair> getbooking(int customerId);
	  
	  public Repair viewbooking(int id);
}
