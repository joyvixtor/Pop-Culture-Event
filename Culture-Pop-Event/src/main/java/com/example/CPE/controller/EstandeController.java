package com.example.CPE.controller;

import com.example.CPE.entity.Estande;
import com.example.CPE.service.EstandeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/estandes")
public class EstandeController {
    
    @Autowired
    private EstandeService estandeService;

    @GetMapping
    public List<Estande> listarTodos() {
        return estandeService.listarTodos();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Estande> buscarPorId(@PathVariable Integer id) {
    return estandeService.buscarPorId(id)
        .map(ResponseEntity::ok)
        .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Estande criar(@RequestBody Estande estande) {
        return estandeService.salvar(estande);
    }

    @PutMapping("/{id}")
    public Estande atualizar(@PathVariable Integer id, @RequestBody Estande estande) {
        estande.setId(id);
        return estandeService.salvar(estande);
    }

    @DeleteMapping("/{id}")
    public void excluir(@PathVariable Integer id) {
        estandeService.excluir(id);
    }

    @GetMapping("/buscar/nome")
    public List<Estande> buscarPorNome(@RequestParam String nome) {
        return estandeService.buscarPorNome(nome);
    }

    @GetMapping("/buscar/categoria")
    public List<Estande> buscarPorCategoria(@RequestParam String categoria) {
        return estandeService.buscarPorCategoria(categoria);
    }
}