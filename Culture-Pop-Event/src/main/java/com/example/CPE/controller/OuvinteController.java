package com.example.CPE.controller;

import com.example.CPE.entity.Ouvinte;
import com.example.CPE.service.OuvinteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/ouvintes")
public class OuvinteController {
    
    @Autowired
    private OuvinteService ouvinteService;

    @GetMapping
    public List<Ouvinte> listarTodos() {
        return ouvinteService.listarTodos();
    }

    @GetMapping("/{cpf}")
    public ResponseEntity<Ouvinte> buscarPorCpf(@PathVariable String cpf) {
        return ouvinteService.buscarPorCpf(cpf)
        .map(ResponseEntity::ok)
        .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Ouvinte criar(@RequestBody Ouvinte ouvinte) {
        return ouvinteService.salvar(ouvinte);
    }

    @PutMapping("/{cpf}")
    public Ouvinte atualizar(@PathVariable String cpf, @RequestBody Ouvinte ouvinte) {
        ouvinte.setCpf(cpf);
        return ouvinteService.salvar(ouvinte);
    }

    @DeleteMapping("/{cpf}")
    public void excluir(@PathVariable String cpf) {
        ouvinteService.excluir(cpf);
    }

    @GetMapping("/buscar/nome")
    public List<Ouvinte> buscarPorNome(@RequestParam String nome) {
        return ouvinteService.buscarPorNome(nome);
    }
}