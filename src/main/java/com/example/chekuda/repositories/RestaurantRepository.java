package com.example.chekuda.repositories;

import com.example.chekuda.models.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
    @Query("SELECT r FROM Restaurant r WHERE ((r.xCoordinate > (?1 - 0.1))) AND (r.xCoordinate < (?1 + 0.1)) AND (r.yCoordinate > (?2 - 0.1)) AND (r.yCoordinate < (?2 + 0.1))")
    List<Restaurant> findByXCoordinateLikeAndYCoordinateNearby(Double xCoordinate, Double yCoordinate);
}
