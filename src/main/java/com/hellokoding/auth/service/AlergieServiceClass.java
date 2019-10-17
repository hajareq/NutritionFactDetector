package com.hellokoding.auth.service;

import com.hellokoding.auth.model.Alergie;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class AlergieServiceClass implements AllergiesService {


    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Long save(Alergie alergie) {
        entityManager.persist(alergie);
        return alergie.getId();
    }



    @Override
    public void remove(Alergie alergie) {
        entityManager.remove(alergie);
    }
}
