package com.example.akademskamislabackend.model.response;

import lombok.Data;

@Data
public class BookResponse {

    private Long id;
    private String title;
    private String description;
    private String genre;

    public BookResponse(Long id, String title, String description, String genre) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.genre = genre;
    }
}
