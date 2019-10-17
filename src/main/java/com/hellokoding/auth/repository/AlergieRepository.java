package com.hellokoding.auth.repository;

import com.hellokoding.auth.model.Alergie;
import com.hellokoding.auth.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AlergieRepository extends JpaRepository<Alergie,Long> {

    List<Alergie> findByUser(User user);


}
