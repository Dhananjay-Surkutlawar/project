package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.BikeCategory;
import com.example.demo.entities.CustomerType;
import com.example.demo.repositories.CustomerTypeRepo;

@Service
public class CustomerTypeService {
	
	@Autowired
	CustomerTypeRepo ctrepo;
	
	public List<CustomerType> getAll()
	{
		return (List<CustomerType>) ctrepo.findAll();
	}

}
