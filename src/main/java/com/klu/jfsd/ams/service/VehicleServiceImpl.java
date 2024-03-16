package com.klu.jfsd.ams.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.model.Vehicles;
import com.klu.jfsd.ams.repository.UserRepository;
import com.klu.jfsd.ams.repository.VehicleRepository;


@Service
public class VehicleServiceImpl implements VehicleService {
	@Autowired
    private VehicleRepository vehicleRepository;
	@Autowired
    private UserRepository userRepository;
	
	@Override
	public Vehicles newvehicles(Vehicles vehicles) {
		return vehicleRepository.save(vehicles);
		
	}
	
	@Override
	public Vehicles viewvehiclesbyid(int eid) 
	{
		
		Optional<Vehicles> obj = vehicleRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Vehicles us = obj.get();
	      return us;
	    }
	    else
	    {
	      return null;
	    }
	}
	
	@Override
	public List<Vehicles> viewvehicles() {
		
		return vehicleRepository.findAll();
	}
	
	@Override
	  public List<Vehicles> getuservehicles(int userId) 
	  {
	    Optional<User> customerOpt = userRepository.findById(userId);

	        if (customerOpt.isPresent()) 
	        {
	            User user = customerOpt.get();
	            return user.getVehicles();
	        }

	        return new ArrayList<>();
	  }

}
