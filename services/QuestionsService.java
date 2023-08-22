package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.City;
import com.example.demo.entities.Question;
import com.example.demo.repositories.CityRepository;
import com.example.demo.repositories.QuestionRepo;

@Service
public class QuestionsService
{
	@Autowired
	QuestionRepo qrepo;
	
	public List<Question> getAll()
	{
		return (List<Question>) qrepo.findAll();
	}
}
