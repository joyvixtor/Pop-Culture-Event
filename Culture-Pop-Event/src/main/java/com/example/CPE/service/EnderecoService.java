package com.example.CPE.service;

import com.example.CPE.entity.Endereco;
import com.example.CPE.repository.EnderecoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class EnderecoService {

    @Autowired
    private EnderecoRepository enderecoRepository;

    public List<Endereco> findByCidade(String cidade) {
        return enderecoRepository.findByCidade(cidade);
    }

    public List<Endereco> findByEstado(String estado) {
        return enderecoRepository.findByEstado(estado);
    }

    public Endereco saveEndereco(Endereco endereco) {
        return enderecoRepository.save(endereco);
    }
}