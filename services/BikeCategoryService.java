package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.BikeCategory;
import com.example.demo.entities.City;
import com.example.demo.repositories.BikeCategoryRepo;

@Service
public class BikeCategoryService {
	
	@Autowired
	BikeCategoryRepo bcrepo;
	
	public List<BikeCategory> getAll()
	{
		return (List<BikeCategory>) bcrepo.findAll();
	}

}
