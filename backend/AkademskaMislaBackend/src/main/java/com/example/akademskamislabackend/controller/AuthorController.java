package com.example.akademskamislabackend.controller;

import com.example.akademskamislabackend.model.Author;
import com.example.akademskamislabackend.model.response.AuthorResponse;
import com.example.akademskamislabackend.service.AuthorService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/authors")
public class AuthorController {

    AuthorService authorService;

    public AuthorController(AuthorService authorService) {
        this.authorService = authorService;
    }

    @CrossOrigin
    @GetMapping
    public List<AuthorResponse> findAll() {
        return authorService.findAll().stream().map(author ->
                new AuthorResponse(
                        author.getId(),
                        author.getFirstName(),
                        author.getLastName(),
                        author.getDateOfBirth().toString(),
                        author.getEmail()
                )).toList();
    }
}
