package com.example.CPE.controller;

import com.example.CPE.entity.Atividade;
import com.example.CPE.service.AtividadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/atividades")
public class AtividadeController {

    @Autowired
    private AtividadeService atividadeService;

    @GetMapping("/categoria/{categoria}")
    public List<Atividade> getAtividadesByCategoria(@PathVariable String categoria) {
        return atividadeService.findByCategoria(categoria);
    }

    @PostMapping
    public Atividade createAtividade(@RequestBody Atividade atividade) {
        return atividadeService.saveAtividade(atividade);
    }
}