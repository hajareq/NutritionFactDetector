package com.hellokoding.auth.repository;

import com.hellokoding.auth.model.Research;
import com.hellokoding.auth.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ResearchRepository extends JpaRepository<Research,Long> {

    List<Research> findByUser(User user);

}
