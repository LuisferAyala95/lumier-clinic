package com.lumier.service.Appointment;

import com.lumier.model.Cita;
import com.lumier.model.Paciente;
import com.lumier.repository.AppointmentRepository;
import com.lumier.repository.PatientRepository;
import com.lumier.service.Patient.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Override
    public List<Cita> findAll() {
        return appointmentRepository.findAll();
    }

    @Override
    public Optional<Cita> findById(Long id) {
        return appointmentRepository.findById(id);
    }

    @Override
    public Cita save(Cita appointment) {
        return appointmentRepository.save(appointment);
    }

    @Override
    public void deleteById(Long id) {
        appointmentRepository.deleteById(id);
    }
}
