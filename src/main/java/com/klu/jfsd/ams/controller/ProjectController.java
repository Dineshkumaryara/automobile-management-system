package com.klu.jfsd.ams.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.ams.model.Admin;
import com.klu.jfsd.ams.model.ContactUs;
import com.klu.jfsd.ams.model.Management;
import com.klu.jfsd.ams.model.Repair;
import com.klu.jfsd.ams.model.User;
import com.klu.jfsd.ams.model.Vehicles;
import com.klu.jfsd.ams.service.AdminService;
import com.klu.jfsd.ams.service.ContactUsService;
import com.klu.jfsd.ams.service.EmailService;
import com.klu.jfsd.ams.service.UserService;
import com.klu.jfsd.ams.service.VehicleService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProjectController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userService;
	@Autowired
	private ContactUsService contactUsService;
	@Autowired
	private VehicleService vehicleService;
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private HttpSession httpSession;
	
	//------------Home Page---------------//

	@GetMapping("/")
	public String home() 
	{
		return "index"; //jsp file
	}
	
	@GetMapping("analytics")
	public String analytics() 
	{
		return "analytics"; //jsp file
	}
	
	@GetMapping("services")
	public String Services() 
	{
		return "services"; //jsp file
	}
	
	//------------User Home Page---------------//

		@GetMapping("userhome")
		public String userhome() 
		{
			return "userhome"; //jsp file
		}
	
	//-----------Admin Login-------------//
	
	@GetMapping("adminlogin")
	public ModelAndView adminloginpage() 
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		
		return mv;
		
	}
	
	@GetMapping("adminhome")
	public String ahome()
	{
		return "adminhome";
	}
	
	@GetMapping("logout")
	  public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    session.invalidate();
	    return "redirect:/";
	  }
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminloginpage(HttpServletRequest request) 
	{
		 ModelAndView mv = new ModelAndView();
	
		String auname = request.getParameter("auname");
	    String apwd = request.getParameter("apwd");
	     
	    Admin admin = adminService.checkadminlogin(auname, apwd);
	    
	    if(admin!=null)
	    {
	    	
	    	mv.setViewName("adminhome");
	      
	    }
	    else
	    {
	      mv.setViewName("error");
	      mv.addObject("back","adminlogin");
	      mv.addObject("message","Login Failed");
	    }
		
	    return mv;
	}
	
	//-----------User Login-------------//
	
	@GetMapping("userlogin")
	public String userloginpage() 
	{
		return "userlogin";
	}
	
	
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request) 
	{
		 ModelAndView mv = new ModelAndView();
	
		String username = request.getParameter("username");
	     String password = request.getParameter("password");
	     
	    User us =  userService.checkuserlogin(username, password);
	    
	    if(us!=null)
	    {
	    	//session
	    	
	    	HttpSession session = request.getSession();
	    	
	    	session.setAttribute("eid", us.getId()); // eid is a session variable
	    	session.setAttribute("eusername", us.getUsername()); // ename is a session variable
	    	
	    	//session
	    	
	    	mv.setViewName("userhome");
	      
	    }
	    else
	    {
	      mv.setViewName("error");
	      mv.addObject("back","userlogin");
	      mv.addObject("message","Login Failed");
	    }
		
	    return mv;
	}
	
	
	//-----------User Sign Up-------------//
	
	
	@GetMapping("signup")
	public String usersignuppage() 
	{
		return "signup";
	}
	
	@PostMapping("newuser")
	public ModelAndView insertaction(HttpServletRequest request,@RequestParam("profilepic") MultipartFile file) throws IOException, SerialException, SQLException
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String username = request.getParameter("username");
		    String email = request.getParameter("email");
		    String phonenum = request.getParameter("phone");
		    String dateOfBirth = request.getParameter("dateOfBirth");
		    String location = request.getParameter("location");
		    String companyname = request.getParameter("companyname");
		    String password = request.getParameter("password");
		    String retypePassword= request.getParameter("retypePassword");
		    
		    byte[] bytes = file.getBytes();
	        Blob profilepic = new javax.sql.rowset.serial.SerialBlob(bytes);
		    
		    System.out.println("i  am here ");
		    	
		    	User us = new User();
		    	
		    	us.setFirstname(firstname);
		    	us.setLastname(lastname);
		    	us.setUsername(username);
		    	us.setEmail(email);
		    	us.setPhonenumber(phonenum);
		    	us.setDob(dateOfBirth);
		    	us.setLocation(location);
		    	us.setCompanyname(companyname);
		    	us.setPassword(password);
		    	us.setRpassword(retypePassword);
		    	us.setProfilepic(profilepic);
		    
		    	msg = userService.adduser(us);
		    	
		    	String welcomeMessage = "Welcome, " + firstname + "!\n\n"
		                  + "Thank you for registering with our service. Here are your registration details:\n"
		                  + "Username: " + username + "\n"
		                  + "Email: " + email + "\n"
		                  + "Phone Number: " + phonenum + "\n\n"
		                  + "If you have any questions or need assistance, please feel free to reach out to us.";

		          emailService.sendEmail(us.getEmail(), "Welcome to Our Service", welcomeMessage);
		    	
		        mv.setViewName("userlogin");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			System.out.println("error occur");
			msg = e.getMessage();
			mv.setViewName("error");
			mv.addObject("message",msg);
		}
	   
		return mv;
	    
	}
	
	//--------------Profile Pic-----------------//
	
	@GetMapping("displayprofilepic")
	  public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	  {
	    User product =  userService.viewuserbyid(id);
	    byte [] imageBytes = null;
	    imageBytes = product.getProfilepic().getBytes(1,(int) product.getProfilepic().length());

	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	
	//-------------About Us--------------//
	
	@GetMapping("aboutus")
	public String aboutus() 
	{
		return "about"; //jsp file
	}
	
	//-------------Brands------------//
	
	@GetMapping("brands")
	public String brand() 
	{
		return "brands"; //jsp file
	}
	
	//-------------Vehicles Section-----------//
	@GetMapping("audivehicles")
	public String audi() 
	{
		return "audivehicles"; //jsp file
	}
	
	@GetMapping("benzvehicles")
	public String benz() 
	{
		return "benzvehicles"; //jsp file
	}
	
	@GetMapping("bmwvehicles")
	public String bmw() 
	{
		return "bmwvehicles"; //jsp file
	}
	
	@GetMapping("hyundaivehicles")
	public String hyuandai() 
	{
		return "hyundaivehicles"; //jsp file
	}
	
	@GetMapping("landrovervehicles")
	public String landrover() 
	{
		return "landrovervehicles"; //jsp file
	}
	
	@GetMapping("maruthivehicles")
	public String maruthi() 
	{
		return "maruthivehicles"; //jsp file
	}
	
	@GetMapping("tatavehicles")
	public String tata() 
	{
		return "tatavehicles"; //jsp file
	}
	
	@GetMapping("toyotavehicles")
	public String toyota() 
	{
		return "toyotavehicles"; //jsp file
	}
	
	//-------Manage Users--------//
	
	@GetMapping("manageusers")
	public String manageusers() 
	{
		return "manageusers"; //jsp file
	}
	
	//-------View all Users---------//
	@GetMapping("viewallusers")
	public ModelAndView viewusers()
	{
		List<User> uslist = adminService.viewallusers();
		
		ModelAndView mv = new  ModelAndView("viewallusers");
		mv.addObject("usdata",uslist);
		
		
		return mv;
		
	}
	//-------View user by ID------//
	@GetMapping("view")
	  public ModelAndView viewempdemo(@RequestParam("id") int eid)
	  {
	    User us = adminService.viewuserbyid(eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewuserbyid");
	    mv.addObject("us", us);
	    return mv;
	  }
	
	//--------Delete User--------//
	@GetMapping("delete/{id}")
	  public String deleteaction(@PathVariable("id") int eid)
	  {
	    adminService.deleteuser(eid);
	    return "redirect:/deleteuser";
	  }
	

	  @GetMapping("deleteuser")
	  public ModelAndView deleteemployeedemo()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("deleteuser"); //deleteuser is jsp file name
	    List<User> uslist =  adminService.viewallusers();
	    mv.addObject("usdata", uslist);
	    return mv;
	  }
	  
	  //-----------Update profile(user)--------------//
	  @GetMapping("updateprofile")
	    public ModelAndView updateuser(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("updateprofile");
	      
	      mv.addObject("eid", session.getAttribute("eid"));
	      mv.addObject("eusername", session.getAttribute("eusername"));
	      
	      int id = (int) session.getAttribute("eid");
	      
	      User us = userService.viewuserbyid(id);
	      
	      mv.addObject("us", us);
	      
	      return mv;
	    }
	    
	    @PostMapping("update")
	    public ModelAndView updateaction(HttpServletRequest request)
	    {
	      String msg = null;
	      
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.addObject("eid", session.getAttribute("eid"));
	      mv.addObject("eusername", session.getAttribute("eusername"));
	      
	      int id = (int) session.getAttribute("eid");
	      
	     try
	     {   	 
	    	 String firstname = request.getParameter("firstname");
	    	 String lastname = request.getParameter("lastname");
	    	 String username = request.getParameter("username");
	    	 String email = request.getParameter("email");
			 String phonenum = request.getParameter("phone");
			 String dateOfBirth = request.getParameter("dateOfBirth");
			 String location = request.getParameter("location");
			 String companyname = request.getParameter("companyname");
			 
			   User us = new User();
			        us.setId(id);
			    	us.setFirstname(firstname);
			    	us.setLastname(lastname);
			    	us.setUsername(username);
			    	us.setEmail(email);
			    	us.setPhonenumber(phonenum);
			    	us.setDob(dateOfBirth);
			    	us.setLocation(location);
			    	us.setCompanyname(companyname);
	        
	        
	        msg = userService.updateuser(us);
	        
	        mv.setViewName("userhome");
	        mv.addObject("message",msg);
	       
	     }
	     catch(Exception e)
	     {
	       msg = e.getMessage();
	       mv.setViewName("error");
	       mv.addObject("back","userhome");
		   mv.addObject("message","Doesn't Change");
	     }
	      
	     
	      return mv;

	    }
	    
	    //-----------change password------------//
	    
	    @GetMapping("changepas")
	    public ModelAndView changepas(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("changepas");
	      
	      mv.addObject("eid", session.getAttribute("eid"));
	      mv.addObject("eusername", session.getAttribute("eusername"));
	      
	      int id = (int) session.getAttribute("eid");
	      
	      User us = userService.viewuserbyid(id);
	      
	      mv.addObject("us", us);
	      
	      return mv;
	    }
	    
	    @PostMapping("change")
	    public ModelAndView changepasaction(HttpServletRequest request)
	    {
	      String msg = null;
	      
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.addObject("eid", session.getAttribute("eid"));
	      mv.addObject("eusername", session.getAttribute("eusername"));
	      
	      int id = (int) session.getAttribute("eid");
	      
	      String newPassword = request.getParameter("password");
	      String confirmPassword = request.getParameter("confirmPassword");
	      
	      if (!newPassword.equals(confirmPassword)) {
		       mv.setViewName("error");
			   mv.addObject("back","changepas");
			   mv.addObject("message","New password and confirm password do not match.");
	   } else {
	      
	     try
	     {   	 
			 String password = request.getParameter("password");
			 
			   User us = new User();
			        us.setId(id);
			    	us.setPassword(newPassword);
	        
	        
	        msg = userService.updatepassword(us);
	        
	        mv.setViewName("userhome");
	        mv.addObject("message",msg);
	       
	     }
	     catch(Exception e)
	     {
	       msg = e.getMessage();
	       mv.setViewName("error");
		   mv.addObject("back","userhome");
		   mv.addObject("message","Password change failed.");
	       
	     }
	      
	   }
	      return mv;

	    }
	    
	  //-----------Contact Us-------------//
		
		@GetMapping("contactus")
		public String contactuspage() 
		{
			return "contactus";
		}
		
		 @PostMapping("submit_contact_form")
		    public ModelAndView submitContactForm(HttpServletRequest request) {
		        ModelAndView mv = new ModelAndView();
		        
		        String name = request.getParameter("name");
		        String email = request.getParameter("email");
		        String message = request.getParameter("message");
		        
		        
		        try {
		            // Create a new Contact object and set its attributes
		            ContactUs contact = new ContactUs();
		            contact.setName(name);
		            contact.setEmail(email);
		            contact.setMessage(message);

		            // Save the contact information in your database (You should have a ContactService for this)
		            contactUsService.saveContactUs(contact);

		            mv.setViewName("contactsus"); // Redirect to the Contact Us page
		            mv.addObject("successMessage", "Thank you! Your message has been sent successfully.");
		            emailService.sendEmail(contact.getEmail(),"Autofleet","Thank you for contacting us.We will get back to you as soon as possible");
		        } catch (Exception e) {
		            e.printStackTrace();
		            mv.setViewName("error");
		            mv.addObject("back", "contactus");
		            mv.addObject("message", "Failed to submit the contact form.");
		        }

		        return mv;
		    }
		 //----------------Get All ContactUs Forms------------//
			@GetMapping("contforms")
			public ModelAndView getAllContactUs()
			{
				List<ContactUs> conlist = adminService.getAllContactUs();
				
				ModelAndView mv = new  ModelAndView("contforms");
				mv.addObject("condata",conlist);
				
				
				return mv;
				
			}
			
			
			//-------------Create Vehicle--------------//
			
			@GetMapping("myvehicles")
			public String myvehicles() 
			{
				return "myvehicles"; //jsp file
			}
			
			
			
			@PostMapping("newvehicle")
			public ModelAndView newvehicle(HttpServletRequest request,@RequestParam("vehicleImage") MultipartFile file) throws IOException, SerialException, SQLException
			{
				String msg = null;
				ModelAndView mv = new ModelAndView();
				
				try 
				{
					String name = request.getParameter("name");
					String model = request.getParameter("model");
					String yearStr = request.getParameter("year");
					int year = Integer.parseInt(yearStr);
				    
				    byte[] bytes = file.getBytes();
			        Blob vehicleImage = new javax.sql.rowset.serial.SerialBlob(bytes);
				    
				    
				    	
				    	Vehicles us = new Vehicles();
				    	
				    	us.setName(name);
				    	us.setModel(model);
				    	us.setYear(year);
				    	us.setVehicleImage(vehicleImage);
				    
				        msg=userService.addvehicle(us);
				    	
				        mv.setViewName("vehicleCreated");
				        
				        System.out.println("i  am here ");
				} 
				catch (Exception e) 
				{
					e.printStackTrace();
					System.out.println("error occur");
					msg = e.getMessage();
					mv.setViewName("error");
					mv.addObject("message",msg);
				}
			   
				return mv;
			    
			}
			//--------------Vehicle Image-----------------//
			
			@GetMapping("displayVehicleImage")
			  public ResponseEntity<byte[]> displayvehicleImage(@RequestParam("id") int id) throws IOException, SQLException
			  {
			    Vehicles product =  vehicleService.viewvehiclesbyid(id);
			    byte [] imageBytes = null;
			    imageBytes = product.getVehicleImage().getBytes(1,(int) product.getVehicleImage().length());

			    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
			  }
			//-------View all Vehicles---------//
			  
			  
			  @GetMapping("viewvehicles")
	          public ModelAndView viewvehicles() 
	        {
	              ModelAndView mv = new ModelAndView("viewvehicles");

	              Integer customerId = (Integer) httpSession.getAttribute("eid");

	              if (customerId != null) {
	                  List<Vehicles> vehicles = userService.getcustomervehicles(customerId);
	                  mv.addObject("vehicles", vehicles);
	              }
	              else 
	              {
	                  
	              }

	              return mv;
	          }
				
			  
			 //--------------------------Vehicle management----------------------//
			  @GetMapping("vehiclemanagement")
				public String vehicle() 
				{
					return "vehiclemanagement"; //jsp file
				}
			  
			  @PostMapping("newbooking")
				public ModelAndView newbooking (HttpServletRequest request)
				{
					String msg = null;
					ModelAndView mv = new ModelAndView();
					
					try 
					{
						String type = request.getParameter("type");
						String dateStr = request.getParameter("date");
						LocalDate date = LocalDate.parse(dateStr);
						String timeStr = request.getParameter("time");
						LocalTime time = LocalTime.parse(timeStr);
						String message = request.getParameter("message");
					    
					    	Management us = new Management();
					    	
					    	us.setVehicleType(type);
					    	us.setBookingDate(date);
					    	us.setBookingTime(time);
					    	us.setAdditionalInfo(message);
					    
					        msg=userService.management(us);
					    	
					        mv.setViewName("bookingdone");
					        
					        System.out.println("i  am here ");
					} 
					catch (Exception e) 
					{
						e.printStackTrace();
						System.out.println("error occur");
						msg = e.getMessage();
						mv.setViewName("error");
						mv.addObject("message",msg);
					}
				   
					return mv;
				    
				}
			  
			  @GetMapping("viewbooking")
	          public ModelAndView viewbooking() 
	        {
	              ModelAndView mv = new ModelAndView("viewbooking");

	              Integer customerId = (Integer) httpSession.getAttribute("eid");

	              if (customerId != null) {
	                  List<Management> management = userService.getbookingdetails(customerId);
	                  mv.addObject("management", management);
	              }
	              else 
	              {
	                  
	              }

	              return mv;
	          }
			  
			  
			//----------------Get All Vehicle management------------//
				@GetMapping("viewallvehiclemanagement")
				public ModelAndView getAllmanages()
				{
					List<Management> conlist = adminService.getAllmanages();
					
					ModelAndView mv = new  ModelAndView("viewallvehiclemanagement");
					mv.addObject("managements",conlist);
					
					
					return mv;
					
				}
				
				//----------------Get All Vehicle Repairs------------//
				@GetMapping("viewallrepairs")
				public ModelAndView getAllrepairs()
				{
					List<Repair> conlist = adminService.getAllrepairs();
					
					ModelAndView mv = new  ModelAndView("viewallrepairs");
					mv.addObject("repairs",conlist);
					
					
					return mv;
					
				}
			  
			  
			//--------------------------Service Booking----------------------//
			  @GetMapping("servicebooking")
				public String service() 
				{
					return "servicebooking"; //jsp file
				}
			  
			  
			  @GetMapping("repair")
				public String repair() 
				{
					return "repair"; //jsp file
				}
			  
			  @PostMapping("repair1")
				public ModelAndView newrepair (HttpServletRequest request)
				{
					String msg = null;
					ModelAndView mv = new ModelAndView();
					
					try 
					{
						String name = request.getParameter("name");
						String email = request.getParameter("email");
						String phonenum = request.getParameter("phone");
					    String location = request.getParameter("location");
						String dateStr = request.getParameter("date");
						LocalDate date = LocalDate.parse(dateStr);
						String timeStr = request.getParameter("time");
						LocalTime time = LocalTime.parse(timeStr);
						String type = request.getParameter("type");
						String rtype = request.getParameter("rtype");
						String urgency = request.getParameter("urgency");
						String message = request.getParameter("message");
					    
					    	Repair us = new Repair();
					    	
					    	us.setName(name);
					    	us.setEmail(email);
					    	us.setPhonenumber(phonenum);
					    	us.setLocation(location);
					    	us.setBookingDate(date);
					    	us.setBookingTime(time);
					    	us.setVehicleType(type);
					    	us.setRepairType(rtype);
					    	us.setUrgency(urgency);
					    	us.setAdditionalInfo(message);
					    
					        msg=userService.repair(us);
					    	
					        mv.setViewName("bookingdone");
					        
					        System.out.println("i  am here ");
					} 
					catch (Exception e) 
					{
						e.printStackTrace();
						System.out.println("error occur");
						msg = e.getMessage();
						mv.setViewName("error");
						mv.addObject("message",msg);
					}
				   
					return mv;
				    
				}
			  
			  @GetMapping("viewrepair")
	          public ModelAndView viewrepairs() 
	        {
	              ModelAndView mv = new ModelAndView("viewrepair");

	              Integer customerId = (Integer) httpSession.getAttribute("eid");

	              if (customerId != null) {
	                  List<Repair> repair = userService.getbooking(customerId);
	                  mv.addObject("repair", repair);
	              }
	              else 
	              {
	                  
	              }

	              return mv;
	          }
			  
			  
			  
			  @GetMapping("review")
			  public ModelAndView review(@RequestParam("id") int id) {
				  Management management = adminService.viewmanagement(id);
				  ModelAndView mv = new ModelAndView("review");
				  mv.addObject("management", management);
				  return mv;
			  }
			  
			  
			  @PostMapping("addreview")
			  public String addreview(@RequestParam("id") int id, HttpServletRequest request) {
			      String review = request.getParameter("review");

			      // Create a new Management object
			      Management man = new Management();
			      man.setReview(review);

			      // Set the ID on the Management object
			      man.setId(id);

			      // Save the Management object
			      adminService.addreview(man);

			      // Redirect to the view page
			      return "redirect:/viewallvehiclemanagement";
			  }


			  @GetMapping("products")
				public String products() 
				{
					return "products"; //jsp file
				}
			  
			  @GetMapping("cart")
				public String cart() 
				{
					return "cart"; //jsp file
				}
			  
}
