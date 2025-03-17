package com.example.CPE.service;

import com.example.CPE.entity.Ouvinte;
import com.example.CPE.repository.OuvinteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class OuvinteService {

    @Autowired
    private OuvinteRepository ouvinteRepository;

    public List<Ouvinte> listarTodos() {
        return ouvinteRepository.findAll();
    }

    public Optional<Ouvinte> buscarPorCpf(String cpf) {
        return ouvinteRepository.findById(cpf);
    }

    public List<Ouvinte> buscarPorNome(String nome) {
        return ouvinteRepository.findByNomeContaining(nome);
    }

    public List<Ouvinte> buscarPorNumeroIngresso(String numeroIngresso) {
        return ouvinteRepository.findByNumeroDoIngressoContaining(numeroIngresso);
    }

    public Ouvinte salvar(Ouvinte ouvinte) {
        return ouvinteRepository.save(ouvinte);
    }

    public void excluir(String cpf) {
        ouvinteRepository.deleteById(cpf);
    }

    public boolean existePorCpf(String cpf) {
        return ouvinteRepository.existsById(cpf);
    }
}