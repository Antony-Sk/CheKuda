package com.example.chekuda.repositories;

import com.example.chekuda.models.Rating;
import com.example.chekuda.models.Restaurant;
import com.example.chekuda.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RatingRepository extends JpaRepository<Rating, Long> {
    List<Rating> findAllByOwner(User owner);

    List<Rating> findAllByRestaurant(Restaurant restaurant);
}
