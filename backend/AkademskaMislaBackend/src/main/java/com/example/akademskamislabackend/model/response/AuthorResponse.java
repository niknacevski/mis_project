package com.example.akademskamislabackend.model.response;

import lombok.Data;

@Data
public class AuthorResponse {

    private Long id;
    private String firstName;
    private String lastName;
    private String dateOfBirth;
    private String email;

    public AuthorResponse(Long id, String firstName, String lastName, String dateOfBirth, String email) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
    }
}
