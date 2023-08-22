package com.example.demo.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Login;

@Repository
public interface LoginRepo extends JpaRepository<Login, Integer> 
{

	    @Query("select l from Login l where email= :email and password= :password ")
	    public Optional<Login> getLogin(String email,String password);
	
}
