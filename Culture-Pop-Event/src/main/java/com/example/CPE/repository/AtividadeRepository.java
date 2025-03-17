package com.example.CPE.repository;

import com.example.CPE.entity.Atividade;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface AtividadeRepository extends JpaRepository<Atividade, Integer> {
    List<Atividade> findByNomeContainingIgnoreCase(String nome);
    List<Atividade> findByCategoriaContainingIgnoreCase(String categoria);
    List<Atividade> findByCapacidadeGreaterThanEqual(Integer capacidade);
}