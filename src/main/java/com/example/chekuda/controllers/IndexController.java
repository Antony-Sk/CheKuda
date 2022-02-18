package com.example.chekuda.controllers;

import com.example.chekuda.models.Restaurant;
import com.example.chekuda.repositories.RestaurantRepository;
import com.example.chekuda.repositories.UserRepository;
import org.springframework.security.core.Authentication;
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
    public String getIndexPage(ModelMap modelMap, Authentication authentication) {
        List<Restaurant> restaurants = restaurantRepository.findByXCoordinateLikeAndYCoordinateNearby(55.748547, 48.741889); // Test
        modelMap.addAttribute("restaurants", restaurants);
        if (authentication == null) {
            modelMap.addAttribute("isUserAuthenticated", "false");
        } else {
            modelMap.addAttribute("isUserAuthenticated", String.valueOf(authentication.isAuthenticated()));
        }
        return "index";
    }
}
