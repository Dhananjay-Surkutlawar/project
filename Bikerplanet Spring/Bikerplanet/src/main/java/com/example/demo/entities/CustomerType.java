package com.example.demo.entities;

import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "customer_types")
public class CustomerType {
    @Id
    private int id;
    
    private String name;
    
    @OneToMany(mappedBy = "customer_types")
    private Set<Login> logins;

	public CustomerType() {
		super();
	}

	// Getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
    
   
    
}
