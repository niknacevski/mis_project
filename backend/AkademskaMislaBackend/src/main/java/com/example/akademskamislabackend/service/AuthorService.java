package com.example.akademskamislabackend.service;

import com.example.akademskamislabackend.repository.AuthorRepository;
import org.springframework.stereotype.Service;

@Service
public class AuthorService {

    private AuthorRepository authorRepository;

    public AuthorService(
            AuthorRepository authorRepository){
        this.authorRepository = authorRepository;
    }
}
