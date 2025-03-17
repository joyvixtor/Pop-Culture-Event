package com.example.CPE.repository;

import com.example.CPE.entity.Ouvinte;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface OuvinteRepository extends JpaRepository<Ouvinte, String> {
    @Query("SELECT o FROM Ouvinte o JOIN o.participante p WHERE p.nome LIKE %:nome%")
    List<Ouvinte> findByNomeContaining(String nome);

    List<Ouvinte> findByNumeroDoIngressoContaining(String numeroIngresso);
}
