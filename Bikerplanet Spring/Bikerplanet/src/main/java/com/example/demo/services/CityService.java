package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.demo.entities.City;
import com.example.demo.repositories.CityRepository;

@Service
public class CityService {
	
	@Autowired
	CityRepository crepo;
	
	public List<City> getAll()
	{
		return (List<City>) crepo.findAll();
	}

	public City saveCity(@RequestBody City c)
	{
		return crepo.save(c);
	}
}
