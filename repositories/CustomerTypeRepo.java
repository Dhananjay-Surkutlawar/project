package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.CustomerType;

@Repository
public interface CustomerTypeRepo extends CrudRepository<CustomerType, Integer> {

}
