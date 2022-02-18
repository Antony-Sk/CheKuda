package com.example.chekuda.repositories;

import com.example.chekuda.models.User;
import com.example.chekuda.models.UserFriend;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FriendsRepository extends JpaRepository<UserFriend, Long> {
    List<UserFriend> findAllByUser(User user);
}
