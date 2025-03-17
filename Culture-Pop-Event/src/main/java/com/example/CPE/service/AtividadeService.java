package com.example.CPE.service;

import com.example.CPE.entity.Atividade;
import com.example.CPE.repository.AtividadeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class AtividadeService {

    @Autowired
    private AtividadeRepository atividadeRepository;

    public List<Atividade> listarTodos() {
        return atividadeRepository.findAll();
    }

    public Optional<Atividade> buscarPorId(Integer id) {
        return atividadeRepository.findById(id);
    }

    public List<Atividade> buscarPorNome(String nome) {
        return atividadeRepository.findByNomeContainingIgnoreCase(nome);
    }

    public List<Atividade> buscarPorCategoria(String categoria) {
        return atividadeRepository.findByCategoriaContainingIgnoreCase(categoria);
    }

    public List<Atividade> buscarPorCapacidadeMinima(Integer capacidadeMinima) {
        return atividadeRepository.findByCapacidadeGreaterThanEqual(capacidadeMinima);
    }

    public Atividade salvar(Atividade atividade) {
        return atividadeRepository.save(atividade);
    }

    public void excluir(Integer id) {
        atividadeRepository.deleteById(id);
    }

    public boolean existePorId(Integer id) {
        return atividadeRepository.existsById(id);
    }
}