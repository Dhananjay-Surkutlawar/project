package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.CustomerType;
import com.example.demo.entities.Questions;
import com.example.demo.services.CustomerTypeService;
import com.example.demo.services.QuestionsService;

@RestController
public class QuestionController
{
	
	 @Autowired
     QuestionsService qservice;
     
     
     @PostMapping("/Allquestions")
 	public List<Questions> getAll()
 	{
 		return Questions.getAll();
 	}

}
