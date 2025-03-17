package com.example.CPE.repository;

import com.example.CPE.entity.Organizador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface OrganizadorRepository extends JpaRepository<Organizador, String> {
    @Query("SELECT o FROM Organizador o JOIN o.participante p WHERE p.nome LIKE %:nome%")
    List<Organizador> findByNomeContaining(String nome);

    List<Organizador> findByCargoContainingIgnoreCase(String cargo);
    List<Organizador> findByDepartamentoContainingIgnoreCase(String departamento);
    List<Organizador> findByCpfSupervisor(String cpfSupervisor);
}
