package com.example.akademskamislabackend.model.request;

import lombok.Data;

@Data
public class LoginRequest {
    private String username;
    private String password;
}
