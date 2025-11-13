package com.lumier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("diagnoses")
public class DiagnosisViewController {

    @GetMapping("addEdit")
    public String diagnosisAddEdit(Model model) {
        model.addAttribute("title", "Registro de Diagnóstico Radiológico");
        return "diagnosisAddEdit";
    }
}
