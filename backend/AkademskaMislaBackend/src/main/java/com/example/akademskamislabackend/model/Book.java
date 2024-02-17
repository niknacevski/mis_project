package com.example.akademskamislabackend.model;

import com.example.akademskamislabackend.model.enums.Genre;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(schema = "public", name = "books")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "description")
    private String description;

    @Enumerated(value = EnumType.STRING)
    private Genre genre;
}
