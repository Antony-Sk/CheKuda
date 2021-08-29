package com.example.chekuda.controllers;


import com.example.chekuda.models.User;
import com.example.chekuda.models.UserRole;
import com.example.chekuda.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    private final UserRepository userRepository;

    public TestController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/test")
    public String test(ModelMap modelMap) {
//        User user = new User();
//        user.setFirstName("pp");
//        user.setLastName("aa");
//        user.setUserRole(UserRole.USER);
//        user.setLogin("Sfds");

//        userRepository.save(user);
        modelMap.addAttribute("users", userRepository.findAll());

        modelMap.addAttribute("name", "World");
        return "test";
    }

}