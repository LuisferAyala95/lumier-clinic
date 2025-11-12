package com.lumier.service.Appointment;

import com.lumier.model.Cita;

import java.util.List;
import java.util.Optional;

public interface AppointmentService {
    List<Cita> findAll();
    Optional<Cita> findById(Long id);
    Cita save(Cita paciente);
    void deleteById(Long id);
}
