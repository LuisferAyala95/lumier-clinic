package com.lumier.service.Diagnosis;

import com.lumier.model.Diagnostico;

import java.util.List;
import java.util.Optional;

public interface DiagnosisService {
    List<Diagnostico> findAll();
    Optional<Diagnostico> findById(Long id);
    Diagnostico save(Diagnostico diagnostico);
    void deleteById(Long id);
}
