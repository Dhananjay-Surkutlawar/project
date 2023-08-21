package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.repositories.LoginRepo;
import com.example.demo.entities.*;
@Service
public class LoginService {

    @Autowired
    private LoginRepo loginRepository;

    public void createLogin(String email, String password, int roleId,int status_id, int question_id, String answer) {
    Login login = new Login();
    login.setEmail(email);
    login.setPassword(password);
    login.setRoleId(roleId);
    login.setStatusId(status_id);
    login.setQuestionId(question_id);
    login.setAnswer(answer);

loginRepository.save(login);
}
}

