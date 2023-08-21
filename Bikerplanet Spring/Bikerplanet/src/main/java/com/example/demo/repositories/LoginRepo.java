package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.Login;

public interface LoginRepo extends CrudRepository<Login, Integer> {

}
