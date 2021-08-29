package com.example.chekuda.controllers;

import com.example.chekuda.forms.UserForm;
import com.example.chekuda.repositories.UserRepository;
import com.example.chekuda.services.SignUpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SignUpController {

    private final SignUpService signUpService;

    private final UserRepository userRepository;

    public SignUpController(SignUpService signUpService, UserRepository userRepository) {
        this.signUpService = signUpService;
        this.userRepository = userRepository;
    }

    @PostMapping("/signUp")
    public String signUp(UserForm userForm, ModelMap modelMap) {
        if (userRepository.findUserByLogin(userForm.getLogin()).isPresent()) {
            modelMap.addAttribute("signupError", "true");
            modelMap.addAttribute("alert", "Имя пользователя занято");
            return "login";
        }
        signUpService.signUp(userForm);
        return "redirect:/login";
    }
}