package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.Questions;

public interface QuestionRepo extends CrudRepository<Questions, Integer> {

}