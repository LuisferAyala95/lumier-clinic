package com.lumier.controller;

import com.lumier.model.Cita;
import com.lumier.service.Appointment.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/appointment")
public class AppointmentRestController {

    @Autowired
    private AppointmentService appointmentService;

    @PostMapping
    public ResponseEntity<Cita> save (@RequestBody Cita appointment) {
        if (appointment.getId() != null) {
            Cita savedAppointment = appointmentService.findById(appointment.getId())
                    .orElseThrow(()-> new RuntimeException("Cita no encontrada con id " + appointment.getId()));

            savedAppointment.setEstado(appointment.getEstado());
            appointmentService.save(savedAppointment);
            ResponseEntity.ok(savedAppointment);
        }
        Cita appointmentSaved = appointmentService.save((appointment));
        return  ResponseEntity.ok(appointmentSaved);
    }
}
