package com.lumier.controller;

import com.lumier.model.Cita;
import com.lumier.service.Appointment.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("appointments")
public class AppointmentViewController {

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping
    public String list(Model model) {
        model.addAttribute("title", "Citas");

        List<Cita> appointments = appointmentService.findAll();
        model.addAttribute("appointments", appointments);

        return "appointments";
    }
}
