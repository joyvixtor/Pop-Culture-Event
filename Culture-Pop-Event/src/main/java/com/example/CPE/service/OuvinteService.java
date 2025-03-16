package com.example.CPE.service;

import com.example.CPE.entity.Ouvinte;
import com.example.CPE.repository.OuvinteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class OuvinteService {

    @Autowired
    private OuvinteRepository ouvinteRepository;

    public List<Ouvinte> findByNumeroDoIngresso(String numeroDoIngresso) {
        return ouvinteRepository.findByNumeroDoIngresso(numeroDoIngresso);
    }

    public Ouvinte saveOuvinte(Ouvinte ouvinte) {
        return ouvinteRepository.save(ouvinte);
    }
}