package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.BikeCategory;
import com.example.demo.entities.CustomerType;
import com.example.demo.services.CustomerTypeService;

@RestController
public class CustomerTypeController 
{
        @Autowired
        CustomerTypeService ctservice;
        
        
        @PostMapping("/Allcustcat")
    	public List<CustomerType> getAll()
    	{
    		return ctservice.getAll();
    	}
}
