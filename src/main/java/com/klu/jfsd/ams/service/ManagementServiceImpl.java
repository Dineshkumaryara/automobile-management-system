package com.klu.jfsd.ams.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.ams.model.Management;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.repository.ManagementRepository;
import com.klu.jfsd.ams.repository.UserRepository;

@Service
public class ManagementServiceImpl implements ManagementService {
	@Autowired
    private ManagementRepository managementRepository;
	@Autowired
    private UserRepository userRepository;
	
	@Override
	public Management newbooking(Management management) {
		return managementRepository.save(management);
	}
	
	@Override
	public Management viewbookingsbyid(int eid) 
	{
		
		Optional<Management> obj = managementRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Management us = obj.get();
	      return us;
	    }
	    else
	    {
	      return null;
	    }
	}
	
	@Override
	  public List<Management> getbookingDetails(int userId) 
	  {
	    Optional<User> customerOpt = userRepository.findById(userId);

	        if (customerOpt.isPresent()) 
	        {
	            User user = customerOpt.get();
	            return user.getManagement();
	        }

	        return new ArrayList<>();
	  }

}
