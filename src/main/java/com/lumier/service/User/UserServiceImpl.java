package com.lumier.service.User;

import com.lumier.model.Usuario;
import com.lumier.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Override
    public List<Usuario> findAll() {
        return userRepository.findAll();
    }

    @Override
    public Optional<Usuario> findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public Usuario save(Usuario usuario) {
        String rawPassword = usuario.getPassword();
        String encodedPassword = passwordEncoder.encode(rawPassword);
        usuario.setPassword(encodedPassword);
        return userRepository.save(usuario);
    }

    @Override
    public void deleteById(Long id) {
        userRepository.deleteById(id);
    }
}
