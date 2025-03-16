package com.example.CPE.controller;

import com.example.CPE.entity.LocalEvento;
import com.example.CPE.service.LocalEventoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/locais")
public class LocalEventoController {

    @Autowired
    private LocalEventoService localEventoService;

    @GetMapping("/capacidade/{capacidade}")
    public List<LocalEvento> getLocaisByCapacidadeGreaterThan(@PathVariable Integer capacidade) {
        return localEventoService.findByCapacidadeGreaterThan(capacidade);
    }

    @PostMapping
    public LocalEvento createLocalEvento(@RequestBody LocalEvento localEvento) {
        return localEventoService.saveLocalEvento(localEvento);
    }
}