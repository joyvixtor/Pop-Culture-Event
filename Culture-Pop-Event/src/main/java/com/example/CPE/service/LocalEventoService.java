package com.example.CPE.service;

import com.example.CPE.entity.LocalEvento;
import com.example.CPE.repository.LocalEventoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class LocalEventoService {

    @Autowired
    private LocalEventoRepository localEventoRepository;

    public List<LocalEvento> listarTodos() {
        return localEventoRepository.findAll();
    }

    public Optional<LocalEvento> buscarPorId(Integer id) {
        return localEventoRepository.findById(id);
    }

    public List<LocalEvento> buscarPorNome(String nome) {
        return localEventoRepository.findByNomeContainingIgnoreCase(nome);
    }

    public List<LocalEvento> buscarPorCapacidadeMinima(Integer capacidadeMinima) {
        return localEventoRepository.findByCapacidadeGreaterThanEqual(capacidadeMinima);
    }

    public LocalEvento salvar(LocalEvento localEvento) {
        return localEventoRepository.save(localEvento);
    }

    public void excluir(Integer id) {
        localEventoRepository.deleteById(id);
    }

    public boolean existePorId(Integer id) {
        return localEventoRepository.existsById(id);
    }
}