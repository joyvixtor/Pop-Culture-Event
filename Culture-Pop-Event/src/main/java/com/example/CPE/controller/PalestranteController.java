package com.example.CPE.controller;

import com.example.CPE.entity.Palestrante;
import com.example.CPE.service.PalestranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/palestrantes")
public class PalestranteController {
    
    @Autowired
    private PalestranteService palestranteService;

    @GetMapping
    public List<Palestrante> listarTodos() {
        return palestranteService.listarTodos();
    }

    @GetMapping("/{cpf}")
    public ResponseEntity<Palestrante> buscarPorCpf(@PathVariable String cpf) {
        return palestranteService.buscarPorCpf(cpf)
        .map(ResponseEntity::ok)
        .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Palestrante criar(@RequestBody Palestrante palestrante) {
        return palestranteService.salvar(palestrante);
    }

    @PutMapping("/{cpf}")
    public Palestrante atualizar(@PathVariable String cpf, @RequestBody Palestrante palestrante) {
        palestrante.setCpf(cpf);
        return palestranteService.salvar(palestrante);
    }

    @DeleteMapping("/{cpf}")
    public void excluir(@PathVariable String cpf) {
        palestranteService.excluir(cpf);
    }

    @GetMapping("/buscar/nome")
    public List<Palestrante> buscarPorNome(@RequestParam String nome) {
        return palestranteService.buscarPorNome(nome);
    }
}