package com.example.akademskamislabackend.service;

import com.example.akademskamislabackend.repository.AuthorRepository;
import com.example.akademskamislabackend.repository.BookAuthorRepository;
import org.springframework.stereotype.Service;

@Service
public class BookAuthorService {

    private BookAuthorRepository bookAuthorRepository;

    public BookAuthorService(
            BookAuthorRepository bookAuthorRepository){
        this.bookAuthorRepository = bookAuthorRepository;
    }
}
