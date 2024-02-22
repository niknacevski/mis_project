package com.example.akademskamislabackend.controller;

import com.example.akademskamislabackend.model.request.LoginRequest;
import com.example.akademskamislabackend.model.request.RegisterRequest;
import com.example.akademskamislabackend.model.response.JwtAuthenticationResponse;
import com.example.akademskamislabackend.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {
    private final AuthenticationService authService;

    @CrossOrigin
    @PostMapping("/register")
    public JwtAuthenticationResponse register(@RequestBody RegisterRequest registerRequest) {
        return authService.signup(registerRequest);
    }

    @CrossOrigin
    @PostMapping("/login")
    public JwtAuthenticationResponse login(@RequestBody LoginRequest loginRequest) {
        return authService.signin(loginRequest);
    }
}
