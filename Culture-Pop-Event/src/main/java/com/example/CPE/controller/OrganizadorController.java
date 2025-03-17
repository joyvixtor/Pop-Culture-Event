package com.example.CPE.controller;

import com.example.CPE.entity.Organizador;
import com.example.CPE.service.OrganizadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/organizadores")
public class OrganizadorController {
    
    @Autowired
    private OrganizadorService organizadorService;

    @GetMapping
    public List<Organizador> listarTodos() {
        return organizadorService.listarTodos();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Organizador> buscarPorCpf(@PathVariable String cpf) {
        return organizadorService.buscarPorCpf(cpf)
            .map(ResponseEntity::ok)
            .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Organizador criar(@RequestBody Organizador organizador) {
        return organizadorService.salvar(organizador);
    }

    @GetMapping("/buscar/nome")
    public List<Organizador> buscarPorNome(@RequestParam String nome) {
        return organizadorService.buscarPorNome(nome);
    }
}
