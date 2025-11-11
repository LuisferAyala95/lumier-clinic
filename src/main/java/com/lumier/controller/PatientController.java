package com.lumier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("patient")
public class PatientController {

    @GetMapping("addEdit")
    public String patientAddEdit(Model model) {
        model.addAttribute("title", "Registro de paciente");
        return "patientAddEdit";
    }
}
