package com.nejck.sporttracker.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeRestController {

    @GetMapping("/home")
    public String home() {
        return "Hello World - NEJCK!";
    }
}
