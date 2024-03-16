package com.klu.jfsd.ams.service;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.ams.model.Admin;
import com.klu.jfsd.ams.model.ContactUs;
import com.klu.jfsd.ams.model.Management;
import com.klu.jfsd.ams.model.Repair;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.repository.AdminRepository;
import com.klu.jfsd.ams.repository.UserRepository;



import com.klu.jfsd.ams.repository.ContactUsRepository;
import com.klu.jfsd.ams.repository.ManagementRepository;
import com.klu.jfsd.ams.repository.RepairRepository;



@Service
public class AdminServiceImpl implements AdminService
{
    @Autowired
	private AdminRepository adminRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ContactUsRepository contactUsRepository;
    @Autowired
    private ManagementRepository managementRepository;
    @Autowired
    private RepairRepository repairRepository;
    
	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		
		return  adminRepository.checkadminlogin(auname, apwd);
	}
	
	@Override
	public List<User> viewallusers() {
		
		return userRepository.findAll();
	}
	
	@Override
	public User viewuserbyid(int eid) {
       
		Optional<User> obj = userRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      User us = obj.get();
	      return us;
	    }
	    else
	    {
	      return null;
	    }
	}
	
	@Override
	public String deleteuser(int eid) 
	{
		Optional<User> obj = userRepository.findById(eid);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      User us = obj.get();
	      userRepository.delete(us);
	      msg = "Employee Deleted Successfully";
	    }
	    else
	    {
	      msg = "Employee Not Found";
	    }
	    
	    return msg;
	}
	@Override
	public List<ContactUs> getAllContactUs() {
		
		return contactUsRepository.findAll();
	}
	
	@Override
	public List<Management> getAllmanages() {
		
		return managementRepository.findAll();
	}
	
	@Override
	public List<Repair> getAllrepairs() {
		
		return repairRepository.findAll();
	}

	@Override
	public String addreview(Management management) {
	    // Retrieve the Management entity by its ID
	    Management man = managementRepository.findById(management.getId()).orElse(null);
	    
	    if (man != null) {
	        // Set the review and save the entity
	        man.setReview(management.getReview());
	        managementRepository.save(man);
	        return "Review added successfully";
	    } else {
	        return "Management entity not found with the provided ID";
	    }
	}

	@Override
	public Management viewmanagement(int mid) {
		
		return managementRepository.findById(mid).get();
	}




}
