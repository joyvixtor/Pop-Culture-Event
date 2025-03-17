package com.example.CPE.repository;

import com.example.CPE.entity.Palestrante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface PalestranteRepository extends JpaRepository<Palestrante, String> {
    @Query("SELECT p FROM Palestrante p JOIN p.participante part WHERE part.nome LIKE %:nome%")
    List<Palestrante> findByNomeContaining(String nome);

    List<Palestrante> findByEmpresaVinculoContainingIgnoreCase(String empresa);
}