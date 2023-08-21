package com.example.demo.entities;

import java.util.List;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "questions")
public class Questions {
    @Id
    private int id;
    
    @Column
    private String question;
    
    @OneToMany(mappedBy = "question")
    private Set<Login> logins;

	public Questions() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public static List<Questions> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
    
   
    
    
}
