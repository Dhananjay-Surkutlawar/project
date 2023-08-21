package com.example.demo.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="city")
public class City {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int ID;
	
	@Column
	String City_Name;
	
	

	public City() {
		super();
	}

	
	public City(String city_Name) {
		super();
		City_Name = city_Name;
	}



	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getCity_Name() {
		return City_Name;
	}

	public void setCity_Name(String city_Name) {
		City_Name = city_Name;
	}
	
	

}
