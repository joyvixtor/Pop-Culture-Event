package com.example.CPE.repository;

import com.example.CPE.entity.Estande;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface EstandeRepository extends JpaRepository<Estande, Integer> {
    List<Estande> findByNomeContainingIgnoreCase(String nome);
    List<Estande> findByCategoriaContainingIgnoreCase(String categoria);
}