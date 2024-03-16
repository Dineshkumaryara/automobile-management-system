package com.klu.jfsd.ams.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.ams.model.Repair;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.repository.RepairRepository;
import com.klu.jfsd.ams.repository.UserRepository;

@Service
public class RepairServiceImpl implements RepairService {
	
	@Autowired
    private RepairRepository repairRepository;
	@Autowired
    private UserRepository userRepository;
	
	@Override
	public Repair newbooking(Repair repair) {
		return repairRepository.save(repair);
	}
	
	@Override
	public Repair viewbookingsbyid(int eid) 
	{
		
		Optional<Repair> obj = repairRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Repair us = obj.get();
	      return us;
	    }
	    else
	    {
	      return null;
	    }
	}

	
	@Override
	  public List<Repair> getrepair(int userId) 
	  {
	    Optional<User> customerOpt = userRepository.findById(userId);

	        if (customerOpt.isPresent()) 
	        {
	            User user = customerOpt.get();
	            return user.getRepair();
	        }

	        return new ArrayList<>();
	  }


}
