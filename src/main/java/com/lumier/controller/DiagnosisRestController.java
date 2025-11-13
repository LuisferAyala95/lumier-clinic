package com.lumier.controller;

import com.lumier.model.Cita;
import com.lumier.model.Diagnostico;
import com.lumier.service.Diagnosis.DiagnosisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/diagnosis")
public class DiagnosisRestController {
    @Autowired
    private DiagnosisService diagnosisService;

    @PostMapping
    public ResponseEntity<Diagnostico> save(@RequestBody Diagnostico diagnosis) {
        Diagnostico diagnosisSaved = diagnosisService.save((diagnosis));
        return ResponseEntity.ok(diagnosisSaved);
    }
    
}
