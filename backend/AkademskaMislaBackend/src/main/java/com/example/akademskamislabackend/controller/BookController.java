package com.example.akademskamislabackend.controller;

import com.example.akademskamislabackend.model.response.BookResponse;
import com.example.akademskamislabackend.service.BookService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/books")
public class BookController {

    BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @CrossOrigin
    @GetMapping
    public List<BookResponse> findAll() {
        return bookService.findAll().stream().map(book -> new BookResponse(
                book.getId(),
                book.getTitle(),
                book.getDescription(),
                book.getGenre().name()
        )).toList();
    }
}
