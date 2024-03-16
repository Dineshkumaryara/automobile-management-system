package com.klu.jfsd.ams.service;



import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.ams.model.Management;
import com.klu.jfsd.ams.model.Repair;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.model.Vehicles;
import com.klu.jfsd.ams.repository.ManagementRepository;
import com.klu.jfsd.ams.repository.RepairRepository;
import com.klu.jfsd.ams.repository.UserRepository;
import com.klu.jfsd.ams.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Service
public class UserServiceImpl implements UserService
{
    @Autowired
	private UserRepository userRepository;
    @Autowired
	private VehicleRepository vehicleRepository;
    @Autowired
	private ManagementRepository managementRepository;
    @Autowired
    private HttpSession httpSession;
    @Autowired
	private RepairRepository repairRepository;
    
    @Override
	public String adduser(User us) {
		
		userRepository.save(us);
		
		return "User Registered Sucessfully";
	}

	@Override
	public User checkuserlogin(String username, String password) {
		
		
		return userRepository.checkuserlogin(username, password);
	}
	
	
	
	@Override
	public String updateuser(User us) {
		User e= userRepository.findById(us.getId()).get();
		
		e.setFirstname(us.getFirstname());
		e.setLastname(us.getLastname());
		e.setUsername(us.getUsername());
		e.setEmail(us.getEmail());
		e.setPhonenumber(us.getPhonenumber());
		e.setDob(us.getDob());
		e.setLocation(us.getLocation());
		e.setCompanyname(us.getCompanyname());
		
		userRepository.save(e);
		
		return  "User Updated Successfully";
	}
	
	@Override
	public String updatepassword(User us) {
		User e= userRepository.findById(us.getId()).get();
		
		e.setPassword(us.getPassword());
		
		userRepository.save(e);
		
		return  "User Password Updated Successfully";
	}
	
	@Override
	public User viewuserbyid(int eid) 
	{
		
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
	  public String addvehicle(Vehicles vehicle) 
	  {
	    Integer customerId = (Integer) httpSession.getAttribute("eid");
	      if (customerId != null) {
	          
	          Optional<User> customerOpt = userRepository.findById(customerId);
	          if (customerOpt.isPresent()) {
	              User customer = customerOpt.get();
	              
	              vehicle.setUser(customer);
	              
	              vehicleRepository.save(vehicle);
	              
	              return "Vehicle added Successfully";
	          }
	      }
	      return "Booking Failed because You are not logged in Please login and try again";
	  }


	  @Override
	  public List<Vehicles> getcustomervehicles(int customerId) 
	  {
	    Optional<User> customerOpt = userRepository.findById(customerId);

	        if (customerOpt.isPresent()) 
	        {
	            User customer = customerOpt.get();
	            return customer.getVehicles();
	        }

	        return new ArrayList<>();
	  }


	  @Override
	  public Vehicles viewvehiclebyid(int id) {
	    
	    return vehicleRepository.findById(id).get();
	  }
	
	  
	
	  
	  
	  @Override
	  public String management(Management management) 
	  {
	    Integer customerId = (Integer) httpSession.getAttribute("eid");
	      if (customerId != null) {
	          
	          Optional<User> customerOpt = userRepository.findById(customerId);
	          if (customerOpt.isPresent()) {
	              User customer = customerOpt.get();
	              
	              management.setUser(customer);
	              
	              managementRepository.save(management);
	              
	              return "Slot booked Successfully";
	          }
	      }
	      return "Booking Failed because You are not logged in Please login and try again";
	  }


	  @Override
	  public List<Management> getbookingdetails(int customerId) 
	  {
	    Optional<User> customerOpt = userRepository.findById(customerId);

	        if (customerOpt.isPresent()) 
	        {
	            User customer = customerOpt.get();
	            return customer.getManagement();
	        }

	        return new ArrayList<>();
	  }


	  @Override
	  public Management viewbookingdetails(int id) {
	    
	    return managementRepository.findById(id).get();
	  }
	
	  
	  
	  @Override
	  public String repair(Repair repair) 
	  {
	    Integer customerId = (Integer) httpSession.getAttribute("eid");
	      if (customerId != null) {
	          
	          Optional<User> customerOpt = userRepository.findById(customerId);
	          if (customerOpt.isPresent()) {
	              User customer = customerOpt.get();
	              
	              repair.setUser(customer);
	              
	              repairRepository.save(repair);
	              
	              return "Slot booked Successfully";
	          }
	      }
	      return "Booking Failed because You are not logged in Please login and try again";
	  }


	  @Override
	  public List<Repair> getbooking(int customerId) 
	  {
	    Optional<User> customerOpt = userRepository.findById(customerId);

	        if (customerOpt.isPresent()) 
	        {
	            User customer = customerOpt.get();
	            return customer.getRepair();
	        }

	        return new ArrayList<>();
	  }


	  @Override
	  public Repair viewbooking(int id) {
	    
	    return repairRepository.findById(id).get();
	  }
}
