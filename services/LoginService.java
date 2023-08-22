package com.example.demo.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.repositories.LoginRepo;
import com.example.demo.entities.*;


@Service
public class LoginService {

    @Autowired
     LoginRepo loginRepo;
    
    public Login getLogin(String email,String password)
    {
    	Login l;
    	Optional<Login> ol= loginRepo.getLogin(email, password);
    	try
    	{
    		l = ol.get();
    		
    	}
    	catch(Exception e)
    	{
    		l=null;
    	}
    	return l;
    }

}


