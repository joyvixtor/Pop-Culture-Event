package com.example.CPE.repository;

import com.example.CPE.entity.Palestrante;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PalestranteRepository extends JpaRepository<Palestrante, String> {
    List<Palestrante> findByEmpresaVinculo(String empresaVinculo);
}