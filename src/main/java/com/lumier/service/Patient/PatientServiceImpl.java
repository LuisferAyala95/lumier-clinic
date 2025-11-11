package com.lumier.service.Patient;

import com.lumier.model.Paciente;
import com.lumier.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PatientServiceImpl implements PatientService{

    @Autowired
    private PatientRepository patientRepository;

    @Override
    public List<Paciente> findAll() {
        return patientRepository.findAll();
    }

    @Override
    public Optional<Paciente> findById(Long id) {
        return patientRepository.findById(id);
    }

    @Override
    public Paciente save(Paciente paciente) {
        return patientRepository.save(paciente);
    }

    @Override
    public void deleteById(Long id) {
        patientRepository.deleteById(id);
    }
}
