package com.example.akademskamislabackend.service;

import com.example.akademskamislabackend.repository.BookRepository;
import org.springframework.stereotype.Service;

@Service
public class BookService {

    private BookRepository bookRepository;

    public BookService(
            BookRepository bookRepository){
        this.bookRepository = bookRepository;
    }

}
