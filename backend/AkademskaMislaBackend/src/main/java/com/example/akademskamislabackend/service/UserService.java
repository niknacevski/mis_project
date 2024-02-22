package com.example.akademskamislabackend.service;

import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    UserDetailsService userDetailsService();
}
