package com.example.CPE.service;

import com.example.CPE.entity.Endereco;
import com.example.CPE.repository.EnderecoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class EnderecoService {

    @Autowired
    private EnderecoRepository enderecoRepository;

    public List<Endereco> listarTodos() {
        return enderecoRepository.findAll();
    }

    public Optional<Endereco> buscarPorCep(String cep) {
        return enderecoRepository.findById(cep);
    }

    public Endereco salvar(Endereco endereco) {
        return enderecoRepository.save(endereco);
    }

    public void excluir(String cep) {
        enderecoRepository.deleteById(cep);
    }

    public boolean existePorCep(String cep) {
        return enderecoRepository.existsById(cep);
    }
}