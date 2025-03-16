package com.example.CPE.service;

import com.example.CPE.entity.Participante;
import com.example.CPE.repository.ParticipanteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ParticipanteService {

    private final ParticipanteRepository participanteRepository;

    @Autowired
    public ParticipanteService(ParticipanteRepository participanteRepository) {
        this.participanteRepository = participanteRepository;
    }

    public List<Participante> findAll() {
        return participanteRepository.findAll();
    }

    public Optional<Participante> findById(String cpf) {
        return participanteRepository.findById(cpf);
    }

    public Participante save(Participante participante) {
        return participanteRepository.save(participante);
    }

    public void deleteById(String cpf) {
        participanteRepository.deleteById(cpf);
    }
}