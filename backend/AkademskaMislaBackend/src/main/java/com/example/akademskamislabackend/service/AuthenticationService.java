package com.example.akademskamislabackend.service;

import com.example.akademskamislabackend.model.request.LoginRequest;
import com.example.akademskamislabackend.model.request.RegisterRequest;
import com.example.akademskamislabackend.model.response.JwtAuthenticationResponse;

public interface AuthenticationService {
    JwtAuthenticationResponse signup(RegisterRequest request);

    JwtAuthenticationResponse signin(LoginRequest request);
}
