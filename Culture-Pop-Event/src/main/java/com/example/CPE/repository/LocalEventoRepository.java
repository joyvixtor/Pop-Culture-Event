package com.example.CPE.repository;

import com.example.CPE.entity.LocalEvento;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface LocalEventoRepository extends JpaRepository<LocalEvento, Integer> {
    List<LocalEvento> findByCapacidadeGreaterThan(Integer capacidade);
}