package com.example.CPE.service;

import com.example.CPE.entity.Estande;
import com.example.CPE.repository.EstandeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class EstandeService {

    @Autowired
    private EstandeRepository estandeRepository;

    public List<Estande> listarTodos() {
        return estandeRepository.findAll();
    }

    public Optional<Estande> buscarPorId(Integer id) {
        return estandeRepository.findById(id);
    }

    public List<Estande> buscarPorNome(String nome) {
        return estandeRepository.findByNomeContainingIgnoreCase(nome);
    }

    public List<Estande> buscarPorCategoria(String categoria) {
        return estandeRepository.findByCategoriaContainingIgnoreCase(categoria);
    }

    public Estande salvar(Estande estande) {
        return estandeRepository.save(estande);
    }

    public void excluir(Integer id) {
        estandeRepository.deleteById(id);
    }

    public boolean existePorId(Integer id) {
        return estandeRepository.existsById(id);
    }
}
