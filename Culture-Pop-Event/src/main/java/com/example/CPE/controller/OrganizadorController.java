package com.example.CPE.controller;

import com.example.CPE.entity.Organizador;
import com.example.CPE.service.OrganizadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/organizadores")
public class OrganizadorController {

    @Autowired
    private OrganizadorService organizadorService;

    @GetMapping("/cargo/{cargo}")
    public List<Organizador> getOrganizadoresByCargo(@PathVariable String cargo) {
        return organizadorService.findByCargo(cargo);
    }

    @GetMapping("/departamento/{departamento}")
    public List<Organizador> getOrganizadoresByDepartamento(@PathVariable String departamento) {
        return organizadorService.findByDepartamento(departamento);
    }

    @PostMapping
    public Organizador createOrganizador(@RequestBody Organizador organizador) {
        return organizadorService.saveOrganizador(organizador);
    }
}
