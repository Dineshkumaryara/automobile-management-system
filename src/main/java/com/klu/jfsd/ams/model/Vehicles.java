package com.klu.jfsd.ams.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "vehicles_table")
public class Vehicles {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "name", nullable = true, length = 50) 
	private String name;
	
	@Column(name = "model", nullable = true, length = 50, unique=true)
	private String model;
	
	@Column(name = "year", nullable = true)
	private int year;
	
	private Blob vehicleImage;
	
	@ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
	//----------Getters and Setters----------------//
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public Blob getVehicleImage() {
		return vehicleImage;
	}
	public void setVehicleImage(Blob vehicleImage) {
		this.vehicleImage = vehicleImage;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
