package com.example.CPE.service;

import com.example.CPE.entity.Atividade;
import com.example.CPE.repository.AtividadeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AtividadeService {

    @Autowired
    private AtividadeRepository atividadeRepository;

    public List<Atividade> findByCategoria(String categoria) {
        return atividadeRepository.findByCategoria(categoria);
    }

    public Atividade saveAtividade(Atividade atividade) {
        return atividadeRepository.save(atividade);
    }
}