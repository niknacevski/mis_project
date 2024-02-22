package com.example.akademskamislabackend.model.exception;

public class InvalidArgumentException extends RuntimeException{
    public InvalidArgumentException() {
        super("Invalid argument");
    }
}
