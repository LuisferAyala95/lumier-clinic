package com.lumier.repository;

import com.lumier.model.Cita;
import com.lumier.model.Paciente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepository extends JpaRepository<Cita, Long> {
}
