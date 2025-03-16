package com.example.CPE.service;

import com.example.CPE.entity.Organizador;
import com.example.CPE.repository.OrganizadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class OrganizadorService {

    @Autowired
    private OrganizadorRepository organizadorRepository;

    public List<Organizador> findByCargo(String cargo) {
        return organizadorRepository.findByCargo(cargo);
    }

    public List<Organizador> findByDepartamento(String departamento) {
        return organizadorRepository.findByDepartamento(departamento);
    }

    public Organizador saveOrganizador(Organizador organizador) {
        return organizadorRepository.save(organizador);
    }
}