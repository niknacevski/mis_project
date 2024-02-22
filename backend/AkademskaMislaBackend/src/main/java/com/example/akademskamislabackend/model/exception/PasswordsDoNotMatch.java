package com.example.akademskamislabackend.model.exception;

public class PasswordsDoNotMatch extends RuntimeException{
    public PasswordsDoNotMatch() {
        super("Password do not match.");
    }
}
