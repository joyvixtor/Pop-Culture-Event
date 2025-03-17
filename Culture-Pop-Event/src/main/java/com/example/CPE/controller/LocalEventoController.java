package com.example.CPE.controller;

import com.example.CPE.entity.Estande;
import com.example.CPE.entity.LocalEvento;
import com.example.CPE.service.LocalEventoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/locais")
public class LocalEventoController {
    
    @Autowired
    private LocalEventoService localEventoService;

    @GetMapping
    public List<LocalEvento> listarTodos() {
        return localEventoService.listarTodos();
    }

    @PostMapping
    public LocalEvento criar(@RequestBody LocalEvento localEvento) {
        return localEventoService.salvar(localEvento);
    }

    @GetMapping("/{id}")
    public LocalEvento atualizar(@PathVariable Integer id, @RequestBody LocalEvento localEvento) {
        localEvento.setId(id);
        return localEventoService.salvar(localEvento);
    }

    @DeleteMapping("/{id}")
    public void excluir(@PathVariable Integer id) {
        localEventoService.excluir(id);
    }

    @GetMapping("/buscar/nome")
    public List<LocalEvento> buscarPorNome(@RequestParam String nome) {
        return localEventoService.buscarPorNome(nome);
    }
}