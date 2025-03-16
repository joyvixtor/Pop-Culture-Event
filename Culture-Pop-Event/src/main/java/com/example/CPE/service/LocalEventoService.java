package com.example.CPE.service;

import com.example.CPE.entity.LocalEvento;
import com.example.CPE.repository.LocalEventoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LocalEventoService {

    @Autowired
    private LocalEventoRepository localEventoRepository;

    public List<LocalEvento> findByCapacidadeGreaterThan(Integer capacidade) {
        return localEventoRepository.findByCapacidadeGreaterThan(capacidade);
    }

    public LocalEvento saveLocalEvento(LocalEvento localEvento) {
        return localEventoRepository.save(localEvento);
    }
}