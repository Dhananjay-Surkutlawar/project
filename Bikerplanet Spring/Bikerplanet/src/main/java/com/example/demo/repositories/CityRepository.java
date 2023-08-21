package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.City;

@Repository
public interface CityRepository extends CrudRepository<City, Integer> {

}
