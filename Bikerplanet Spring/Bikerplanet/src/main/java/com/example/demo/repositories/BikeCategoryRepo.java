package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.BikeCategory;

public interface BikeCategoryRepo extends CrudRepository<BikeCategory, Integer>
{

}
