package com.example.CPE.repository;

import com.example.CPE.entity.LocalEvento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface LocalEventoRepository extends JpaRepository<LocalEvento, Integer> {
    List<LocalEvento> findByNomeContainingIgnoreCase(String nome);
    List<LocalEvento> findByCapacidadeGreaterThanEqual(Integer capacidade);
}