package com.lumier.service.Diagnosis;

import com.lumier.model.Diagnostico;
import com.lumier.repository.DiagnosisRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DiagnosisServiceImpl implements DiagnosisService {

    @Autowired
    private DiagnosisRepository diagnosisRepository;

    @Override
    public List<Diagnostico> findAll() {
        return diagnosisRepository.findAll();
    }

    @Override
    public Optional<Diagnostico> findById(Long id) {
        return diagnosisRepository.findById(id);
    }

    @Override
    public Diagnostico save(Diagnostico appointment) {
        return diagnosisRepository.save(appointment);
    }

    @Override
    public void deleteById(Long id) {
        diagnosisRepository.deleteById(id);
    }
}
