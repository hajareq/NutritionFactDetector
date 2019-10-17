package com.hellokoding.auth.repository;

import com.hellokoding.auth.model.Drink;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DrinkRepository extends JpaRepository<Drink,Long> {
    Drink findByName(String name);
}
