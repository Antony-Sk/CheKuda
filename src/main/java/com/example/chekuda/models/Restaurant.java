package com.example.chekuda.models;

import javax.persistence.*;

@Entity
@Table(name = "ck_restaurant")
public class Restaurant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;

    @ManyToOne
    private User owner;

    private String xCoordinate;
    private String yCoordinate;
}
