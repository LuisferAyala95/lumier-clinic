package com.lumier.service.User;

import com.lumier.model.Usuario;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<Usuario> findAll();
    Optional<Usuario> findById(Long id);
    Usuario save(Usuario Usuario);
    void deleteById(Long id);
}
