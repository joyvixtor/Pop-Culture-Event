package com.example.CPE.service;

import com.example.CPE.entity.Palestrante;
import com.example.CPE.repository.PalestranteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class PalestranteService {

    @Autowired
    private PalestranteRepository palestranteRepository;

    public List<Palestrante> listarTodos() {
        return palestranteRepository.findAll();
    }

    public Optional<Palestrante> buscarPorCpf(String cpf) {
        return palestranteRepository.findById(cpf);
    }

    public List<Palestrante> buscarPorNome(String nome) {
        return palestranteRepository.findByNomeContaining(nome);
    }

    public List<Palestrante> buscarPorEmpresa(String empresa) {
        return palestranteRepository.findByEmpresaVinculoContainingIgnoreCase(empresa);
    }

    public Palestrante salvar(Palestrante palestrante) {
        return palestranteRepository.save(palestrante);
    }

    public void excluir(String cpf) {
        palestranteRepository.deleteById(cpf);
    }

    public boolean existePorCpf(String cpf) {
        return palestranteRepository.existsById(cpf);
    }
}

