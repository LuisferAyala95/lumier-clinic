package com.lumier.controller;

import com.lumier.model.Paciente;
import com.lumier.service.Patient.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;



@RestController
@RequestMapping("/api/patients")
public class PatientRestController {
    @Autowired
    private PatientService patientService;

    @PostMapping
    public ResponseEntity<Paciente> save(@RequestBody Paciente patient) {
        Paciente patientSave = patientService.save(patient);
        return ResponseEntity.ok(patientSave);
    }
}
