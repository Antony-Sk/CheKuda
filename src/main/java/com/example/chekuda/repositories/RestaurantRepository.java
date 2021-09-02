package com.example.chekuda.repositories;

import com.example.chekuda.models.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
    @Query("select r from Restaurant r where r.xCoordinate like ?1% and r.yCoordinate like ?2%")
    Optional<Restaurant> findByXCoordinateLikeAndYCoordinateLike(String xCoordinate, String yCoordinate);
}
