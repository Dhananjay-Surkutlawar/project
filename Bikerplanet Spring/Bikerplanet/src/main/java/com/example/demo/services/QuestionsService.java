package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.City;
import com.example.demo.entities.Questions;
import com.example.demo.repositories.CityRepository;
import com.example.demo.repositories.QuestionRepo;

@Service
public class QuestionsService
{
	@Autowired
	QuestionRepo qrepo;
	
	public List<Questions> getAll()
	{
		return (List<Questions>) qrepo.findAll();
	}
}
