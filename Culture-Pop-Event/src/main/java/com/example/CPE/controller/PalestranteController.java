package com.example.CPE.controller;

import com.example.CPE.entity.Palestrante;
import com.example.CPE.service.PalestranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/palestrantes")
public class PalestranteController {

    @Autowired
    private PalestranteService palestranteService;

    @GetMapping("/empresa/{empresaVinculo}")
    public List<Palestrante> getPalestrantesByEmpresaVinculo(@PathVariable String empresaVinculo) {
        return palestranteService.findByEmpresaVinculo(empresaVinculo);
    }

    @PostMapping
    public Palestrante createPalestrante(@RequestBody Palestrante palestrante) {
        return palestranteService.savePalestrante(palestrante);
    }
}