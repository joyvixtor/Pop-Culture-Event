package com.example.CPE.controller;

import com.example.CPE.entity.Estande;
import com.example.CPE.service.EstandeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/estandes")
public class EstandeController {

    @Autowired
    private EstandeService estandeService;

    @GetMapping("/categoria/{categoria}")
    public List<Estande> getEstandesByCategoria(@PathVariable String categoria) {
        return estandeService.findByCategoria(categoria);
    }

    @PostMapping
    public Estande createEstande(@RequestBody Estande estande) {
        return estandeService.saveEstande(estande);
    }
}