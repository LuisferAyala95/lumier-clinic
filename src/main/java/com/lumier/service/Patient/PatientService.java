package com.lumier.service.Patient;

import com.lumier.model.Paciente;

import java.util.List;
import java.util.Optional;

public interface PatientService {
    List<Paciente> findAll();
    Optional<Paciente> findById(Long id);
    Paciente save(Paciente paciente);
    void deleteById(Long id);
}
