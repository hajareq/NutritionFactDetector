package com.hellokoding.auth.service;

import com.hellokoding.auth.model.Alergie;

public interface AllergiesService {

    Long save(Alergie alergie);

    void remove(Alergie alergie);

}
