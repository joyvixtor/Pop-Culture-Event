package com.example.CPE.repository;

import com.example.CPE.entity.Organizador;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface OrganizadorRepository extends JpaRepository<Organizador, String> {
    List<Organizador> findByCargo(String cargo);
    List<Organizador> findByDepartamento(String departamento);
}
