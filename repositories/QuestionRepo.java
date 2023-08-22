package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Question;

@Repository
public interface QuestionRepo extends CrudRepository<Question, Integer> {

}
