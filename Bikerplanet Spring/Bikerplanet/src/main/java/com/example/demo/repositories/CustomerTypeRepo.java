package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.CustomerType;

public interface CustomerTypeRepo extends CrudRepository<CustomerType, Integer> {

}
