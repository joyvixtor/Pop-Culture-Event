package com.example.CPE.service;

import com.example.CPE.entity.Participante;
import com.example.CPE.repository.ParticipanteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ParticipanteService {

    @Autowired
    private ParticipanteRepository participanteRepository;

    public List<Participante> listarTodos() {
        return participanteRepository.findAll();
    }

    public Optional<Participante> buscarPorCpf(String cpf) {
        return participanteRepository.findById(cpf);
    }

    public List<Participante> buscarPorNome(String nome) {
        return participanteRepository.findByNomeContainingIgnoreCase(nome);
    }

    public List<Participante> buscarPorEmail(String email) {
        return participanteRepository.findByEmailContainingIgnoreCase(email);
    }

    public Participante salvar(Participante participante) {
        return participanteRepository.save(participante);
    }

    public void excluir(String cpf) {
        participanteRepository.deleteById(cpf);
    }

    public boolean existePorCpf(String cpf) {
        return participanteRepository.existsById(cpf);
    }
}