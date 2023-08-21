package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.BikeCategory;
import com.example.demo.entities.City;
import com.example.demo.services.BikeCategoryService;

@RestController
public class BikeCategoryController {
	
	@Autowired
	BikeCategoryService bcservice;
	
	@PostMapping("/Allbikecat")
	public List<BikeCategory> getAll()
	{
		return bcservice.getAll();
	}

}
