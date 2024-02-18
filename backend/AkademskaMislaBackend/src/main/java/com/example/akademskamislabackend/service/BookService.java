package com.example.akademskamislabackend.service;

import com.example.akademskamislabackend.model.Book;
import com.example.akademskamislabackend.repository.BookRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    private BookRepository bookRepository;

    public BookService(
            BookRepository bookRepository){
        this.bookRepository = bookRepository;
    }

    public List<Book> findAll() {
        return bookRepository.findAll();
    }

}
