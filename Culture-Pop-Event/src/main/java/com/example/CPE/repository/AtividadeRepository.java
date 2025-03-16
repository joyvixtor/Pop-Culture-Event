package com.example.CPE.repository;

import com.example.CPE.entity.Atividade;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AtividadeRepository extends JpaRepository<Atividade, Integer> {
    List<Atividade> findByCategoria(String categoria);
}