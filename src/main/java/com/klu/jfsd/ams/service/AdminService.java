package com.klu.jfsd.ams.service;

import java.util.List;

import com.klu.jfsd.ams.model.Admin;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.model.ContactUs;
import com.klu.jfsd.ams.model.Management;
import com.klu.jfsd.ams.model.Repair;

public interface AdminService 
{
	public Admin checkadminlogin(String auname, String apwd);
	public List<User> viewallusers();
	public User viewuserbyid(int eid);
	public String deleteuser(int eid);
	public List<ContactUs> getAllContactUs();
	public List<Management> getAllmanages();
	public List<Repair> getAllrepairs();
	public String addreview(Management management);
	
	public Management viewmanagement(int mid);
}
