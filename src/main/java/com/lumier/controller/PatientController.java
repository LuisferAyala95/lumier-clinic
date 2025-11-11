package com.lumier.controller;


import com.lumier.model.Paciente;
import com.lumier.service.Patient.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("patient")
public class PatientController {

    @Autowired
    private PatientService patientService;

    @GetMapping("addEdit")
    public String patientAddEdit(Model model) {
        model.addAttribute("title", "Registro de paciente");
        return "patientAddEdit";
    }

    @GetMapping("list")
    public String patientList(Model model) {
        List<Paciente> patients = patientService.findAll();
        model.addAttribute("title", "Pacientes");
        model.addAttribute("patientData", patients);
        System.out.println(patients);
        return "patients";
    }

}
