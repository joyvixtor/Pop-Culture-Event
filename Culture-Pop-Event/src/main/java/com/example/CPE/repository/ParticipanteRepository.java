package com.example.CPE.repository;

import com.example.CPE.entity.Participante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ParticipanteRepository extends JpaRepository<Participante, String> {
    List<Participante> findByNomeContainingIgnoreCase(String nome);
    List<Participante> findByEmailContainingIgnoreCase(String email);
}