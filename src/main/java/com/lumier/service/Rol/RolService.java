package com.lumier.service.Rol;

import com.lumier.model.Rol;

import java.util.List;
import java.util.Optional;

public interface RolService {
    List<Rol> findAll();
    Optional<Rol> findById(Long id);
    Rol save(Rol Rol);
    void deleteById(Long id);
}
