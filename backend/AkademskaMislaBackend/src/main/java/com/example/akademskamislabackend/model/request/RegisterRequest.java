package com.example.akademskamislabackend.model.request;

import lombok.Data;

@Data
public class RegisterRequest {
    private String username;
    private String password;
    private String confirmPassword;
}
