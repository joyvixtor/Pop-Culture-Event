package com.example.CPE.repository;

import com.example.CPE.entity.Participante;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ParticipanteRepository extends JpaRepository<Participante, String> {
    List<Participante> findByNomeContaining(String nome);
    List<Participante> findByEmail(String email);
}