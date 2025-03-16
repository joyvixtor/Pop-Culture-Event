package com.example.CPE.repository;

import com.example.CPE.entity.Ouvinte;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface OuvinteRepository extends JpaRepository<Ouvinte, String> {
    List<Ouvinte> findByNumeroDoIngresso(String numeroDoIngresso);
}
