package com.klu.jfsd.ams.model;


import java.sql.Blob;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_table")
public class User 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="user_fname",nullable=true,length = 50)
	private String firstname;
	@Column(name="user_lname",nullable=true,length = 50)
	private String lastname;
	@Column(name="user_phnnum",nullable=true,unique = true)
	private String phonenumber;
	@Column(name="user_location",nullable=true)
	private String location;
	@Column(name="user_comname",nullable=true,length = 50)
	private String companyname;
	@Column(name = "user_dob", nullable = true)
	private String dob;
	@Column(name="user_uname",nullable=true,unique = true,length = 50)
	private String username;
	@Column(name="user_email",nullable=true,unique = true,length = 30)
	private String email;
	@Column(name="user_pwd",nullable=true,length = 30)
	private String password;
	@Column(name="user_rpwd",nullable=true,length = 30)
	private String rpassword;
	
	private Blob profilepic;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Vehicles> vehicles;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Management> management;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Repair> repair;
	
	//------------Getters and Setters-----------//
	
	public List<Vehicles> getVehicles() {
		return vehicles;
	}
	public void setVehicles(List<Vehicles> vehicles) {
		this.vehicles = vehicles;
	}
	public Blob getProfilepic() {
		return profilepic;
	}
	public void setProfilepic(Blob profilepic) {
		this.profilepic = profilepic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRpassword() {
		return rpassword;
	}
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
	
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ",firstname=" + firstname + ",lastname=" + lastname + ", username=" + username + ", email=" + email + ", phonenumber=" + phonenumber + ", location=" + location + ", companyname=" + companyname + ", dob=" + dob + ", password=" + password+ ", rpassword=" + rpassword+ " ]";
	}
	public List<Management> getManagement() {
		return management;
	}
	public void setManagement(List<Management> management) {
		this.management = management;
	}
	public List<Repair> getRepair() {
		return repair;
	}
	public void setRepair(List<Repair> repair) {
		this.repair = repair;
	}
}
