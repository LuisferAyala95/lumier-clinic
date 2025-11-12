package com.lumier.controller;

import com.lumier.model.Paciente;
import com.lumier.service.Appointment.AppointmentService;
import com.lumier.service.Patient.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private PatientService patientService;

    @RequestMapping("/")
    public String home() {
       return "homeLayout";
    }

    @RequestMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("title", "Dashboard");
        return "dashboard";
    }

    @RequestMapping("/scheduleAppointment")
    public String appointments(Model model) {
        List<Paciente> patients = patientService.findAll();
        model.addAttribute("patients", patients);
        model.addAttribute("title", "Registrar cita de atención inmediata");
        return "scheduleAppointment";
    }

    @RequestMapping("/patients")
    public String patients(Model model) {
        List<Paciente> patients = patientService.findAll();
        model.addAttribute("title", "Pacientes");
        model.addAttribute("patientData", patients);
        System.out.println(patients);
        return "patients";
    }

    @RequestMapping("/diagnoses")
    public String diagnoses() {
        return "diagnoses";
    }


}
