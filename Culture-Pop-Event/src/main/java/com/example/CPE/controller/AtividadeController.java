package com.example.CPE.controller;

import com.example.CPE.entity.Atividade;
import com.example.CPE.service.AtividadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/atividades")
public class AtividadeController {

    private final AtividadeService atividadeService;

    @Autowired
    public AtividadeController(AtividadeService atividadeService) {
        this.atividadeService = atividadeService;
    }

    @GetMapping
    public ResponseEntity<List<Atividade>> listarTodos() {
        return ResponseEntity.ok(atividadeService.listarTodos());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Atividade> buscarPorId(@PathVariable Integer id) {
        return atividadeService.buscarPorId(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Atividade> criar(@RequestBody Atividade atividade) {
        return ResponseEntity.status(HttpStatus.CREATED).body(atividadeService.salvar(atividade));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Atividade> atualizar(@PathVariable Integer id, @RequestBody Atividade atividade) {
        if (!atividadeService.existePorId(id)) {
            return ResponseEntity.notFound().build();
        }
        atividade.setId(id);
        return ResponseEntity.ok(atividadeService.salvar(atividade));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> excluir(@PathVariable Integer id) {
        atividadeService.excluir(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/buscar/nome")
    public ResponseEntity<List<Atividade>> buscarPorNome(@RequestParam String nome) {
        return ResponseEntity.ok(atividadeService.buscarPorNome(nome));
    }

    @GetMapping("/buscar/categoria")
    public ResponseEntity<List<Atividade>> buscarPorCategoria(@RequestParam String categoria) {
        return ResponseEntity.ok(atividadeService.buscarPorCategoria(categoria));
    }

    @GetMapping("/buscar/capacidade")
    public ResponseEntity<List<Atividade>> buscarPorCapacidadeMinima(@RequestParam Integer capacidadeMinima) {
        return ResponseEntity.ok(atividadeService.buscarPorCapacidadeMinima(capacidadeMinima));
    }
}