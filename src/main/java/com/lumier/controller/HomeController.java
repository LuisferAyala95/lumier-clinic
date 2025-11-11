package com.lumier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
       return "homeLayout";
    }

    @RequestMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("title", "Dashboard");
        return "dashboard";
    }

    @RequestMapping("/appointments")
    public String appointments() {
        return "appointments";
    }

    @RequestMapping("/patients")
    public String patients(Model model) {
        model.addAttribute("title", "Pacientes");
        return "patients";
    }

    @RequestMapping("/diagnoses")
    public String diagnoses() {
        return "diagnoses";
    }
}
