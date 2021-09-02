package com.example.chekuda.controllers;

import com.example.chekuda.models.Restaurant;
import com.example.chekuda.repositories.RestaurantRepository;
import com.example.chekuda.repositories.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Optional;

@Controller
public class IndexController {
    private final UserRepository userRepository;
    private final RestaurantRepository restaurantRepository;

    public IndexController(UserRepository userRepository, RestaurantRepository restaurantRepository) {
        this.userRepository = userRepository;
        this.restaurantRepository = restaurantRepository;
    }

    @GetMapping("/")
    public String getIndexPage(ModelMap modelMap) {
        Optional<Restaurant> restaurants = restaurantRepository.findByXCoordinateLikeAndYCoordinateLike("45", "54");
        return "index";
    }
}
