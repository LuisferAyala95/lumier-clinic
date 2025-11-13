package com.lumier.controller;

import com.lumier.model.Rol;
import com.lumier.model.Usuario;
import com.lumier.service.Rol.RolService;
import com.lumier.service.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequestMapping("users")
public class UserViewController {
    @Autowired
    private UserService userService;

    @Autowired
    private RolService rolService;

    @GetMapping("addEdit")
    public String userAddEdit(Model model) {
        List<Rol> roles = rolService.findAll();
        model.addAttribute("title", "Registro de Usuario");
        model.addAttribute("roles", roles);
        return "userAddEdit";
    }

    @GetMapping
    public String userList(Model model) {
        List<Usuario> userList = userService.findAll();
        model.addAttribute("title", "Usuarios");
        model.addAttribute("users", userList);
        return "users";
    }
}
