package com.example.CPE.service;

import com.example.CPE.entity.Estande;
import com.example.CPE.repository.EstandeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class EstandeService {

    @Autowired
    private EstandeRepository estandeRepository;

    public List<Estande> findByCategoria(String categoria) {
        return estandeRepository.findByCategoria(categoria);
    }

    public Estande saveEstande(Estande estande) {
        return estandeRepository.save(estande);
    }
}
