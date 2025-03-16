package com.example.CPE.controller;

import com.example.CPE.entity.Ouvinte;
import com.example.CPE.service.OuvinteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/ouvintes")
public class OuvinteController {

    @Autowired
    private OuvinteService ouvinteService;

    @GetMapping("/ingresso/{numeroDoIngresso}")
    public List<Ouvinte> getOuvintesByNumeroDoIngresso(@PathVariable String numeroDoIngresso) {
        return ouvinteService.findByNumeroDoIngresso(numeroDoIngresso);
    }

    @PostMapping
    public Ouvinte createOuvinte(@RequestBody Ouvinte ouvinte) {
        return ouvinteService.saveOuvinte(ouvinte);
    }
}