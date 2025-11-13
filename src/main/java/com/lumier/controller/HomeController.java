package com.lumier.controller;

import com.lumier.model.Cita;
import com.lumier.model.Diagnostico;
import com.lumier.model.Paciente;
import com.lumier.service.Appointment.AppointmentService;
import com.lumier.service.Diagnosis.DiagnosisService;
import com.lumier.service.Patient.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private PatientService patientService;

    @Autowired
    private AppointmentService appointmentService;

    @Autowired
    private DiagnosisService diagnosisService;

    @RequestMapping("/")
    public String home() {
       return "homeLayout";
    }

    @RequestMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("title", "Dashboard");
        List<Cita> appointments = appointmentService.findAll();
        List<Diagnostico> diagnosis = diagnosisService.findAll();

        List<Cita> pendingAppointments = appointments.stream().filter((appointment -> appointment.getEstado().equals("Pendiente por Diagnóstico")))
                .toList();

        List<Cita> todayAppointments = appointments.stream().filter((appointment -> appointment.getFechaProgramacion().equals(LocalDate.now())))
                .toList();

        model.addAttribute("diagnosisData", diagnosis);
        model.addAttribute("appointments", pendingAppointments);
        model.addAttribute("todayAppointments", todayAppointments);
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
        return "patients";
    }

    @RequestMapping("/diagnoses")
    public String diagnoses(Model model) {
        List<Diagnostico> diagnosis = diagnosisService.findAll();
        model.addAttribute("title", "Diagnósticos");
        model.addAttribute("diagnosisData", diagnosis);
        return "diagnoses";
    }


}
