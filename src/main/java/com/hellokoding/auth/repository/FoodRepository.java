package com.hellokoding.auth.repository;

import com.hellokoding.auth.model.Food;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FoodRepository extends JpaRepository<Food,Long> {

    Food findByProductName(String productName);

}
