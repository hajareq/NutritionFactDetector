package com.hellokoding.auth.repository;

import com.hellokoding.auth.model.Medicine;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MedicineRepository extends JpaRepository<Medicine,Long> {

    Medicine findByName(String name);
}
