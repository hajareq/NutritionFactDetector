package com.hellokoding.auth.service;

import com.hellokoding.auth.model.Research;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class ResearchServiceImpl implements ResearchService {


    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Long save(Research research) {
        entityManager.persist(research);
        return research.getId();
    }
}
