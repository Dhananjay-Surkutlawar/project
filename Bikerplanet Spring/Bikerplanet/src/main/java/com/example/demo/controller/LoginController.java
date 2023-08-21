package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.LoginRequest;
import com.example.demo.services.LoginService;

@RestController
@RequestMapping("/api")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @PostMapping("/createlogin")
    public String createLogin(@RequestBody LoginRequest loginRequest) {
        loginService.createLogin(loginRequest.getEmail(), loginRequest.getPassword(),
                loginRequest.getRoleId(), loginRequest.getStatusId(),
                loginRequest.getQuestionId(), loginRequest.getAnswer());
        return "Login created successfully!";
    }
}