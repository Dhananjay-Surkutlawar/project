package com.example.demo.entities;
import com.example.demo.entities.Question;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "logins")
public class Login {

    @Id
    
    private int id;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "status_id")
    private boolean status_id;

  

    @Column(name = "answer")
    private String answer;

    @ManyToOne
    @JoinColumn(name="q_id")
    private Question question;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private CustomerType role_id;


    
    
    
    
    
    
    
    
    public Login() {
		super();
	}

	public Login(int id, String email, String password, boolean status_id, String answer, Question question,
			CustomerType role_id) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.status_id = status_id;
		this.answer = answer;
		this.question = question;
		this.role_id = role_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}






	public boolean isStatus_id() {
		return status_id;
	}

	public void setStatus_id(boolean status_id) {
		this.status_id = status_id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public CustomerType getRole() {
		return role_id;
	}

	public void setRole(CustomerType role) {
		this.role_id = role;
	}

    // Constructors, getters, and setters
    
}
