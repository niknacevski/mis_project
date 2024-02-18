package com.example.akademskamislabackend.service;

import com.example.akademskamislabackend.model.Author;
import com.example.akademskamislabackend.repository.AuthorRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {

    private AuthorRepository authorRepository;

    public AuthorService(
            AuthorRepository authorRepository){
        this.authorRepository = authorRepository;
    }

    public List<Author> findAll() {
        return authorRepository.findAll();
    }
}
