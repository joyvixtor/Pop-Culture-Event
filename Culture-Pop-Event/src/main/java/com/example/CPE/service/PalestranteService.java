package com.example.CPE.service;

import com.example.CPE.entity.Palestrante;
import com.example.CPE.repository.PalestranteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class PalestranteService {

    @Autowired
    private PalestranteRepository palestranteRepository;

    public List<Palestrante> findByEmpresaVinculo(String empresaVinculo) {
        return palestranteRepository.findByEmpresaVinculo(empresaVinculo);
    }

    public Palestrante savePalestrante(Palestrante palestrante) {
        return palestranteRepository.save(palestrante);
    }
}

