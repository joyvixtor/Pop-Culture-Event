package com.example.CPE.repository;

import com.example.CPE.entity.Estande;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface EstandeRepository extends JpaRepository<Estande, Integer> {
    List<Estande> findByCategoria(String categoria);
}