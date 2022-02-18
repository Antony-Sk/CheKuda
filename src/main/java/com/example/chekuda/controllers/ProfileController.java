package com.example.chekuda.controllers;

import com.example.chekuda.models.Rating;
import com.example.chekuda.models.User;
import com.example.chekuda.models.UserFriend;
import com.example.chekuda.repositories.FriendsRepository;
import com.example.chekuda.repositories.RatingRepository;
import com.example.chekuda.security.details.UserDetailsImpl;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProfileController {
    private final RatingRepository ratingRepository;
    private final FriendsRepository friendsRepository;

    public ProfileController(RatingRepository ratingRepository, FriendsRepository friendsRepository) {
        this.ratingRepository = ratingRepository;
        this.friendsRepository = friendsRepository;
    }

    @GetMapping("/profile")
    String getProfilePage(ModelMap modelMap, Authentication authentication) {
        User user = ((UserDetailsImpl) authentication.getPrincipal()).getUser();
        modelMap.addAttribute("username", user.getLogin());
        modelMap.addAttribute("isUserAuthenticated", "true");

        List<UserFriend> relations = friendsRepository.findAllByUser(user);
        List<User> friends = new ArrayList<>();
        for (UserFriend userFriend : relations)
            friends.add(userFriend.getFriend());
        modelMap.addAttribute("friends", friends);

        List<Rating> friendsRatings = new ArrayList<>();
        for (User friend : friends) {
            friendsRatings.addAll(ratingRepository.findAllByOwner(friend));
        }
        modelMap.addAttribute("friendsRates", friendsRatings);

        return "profile";
    }
}
