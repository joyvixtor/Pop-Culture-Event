package com.example.CPE.controller;

import com.example.CPE.entity.Endereco;
import com.example.CPE.service.EnderecoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/enderecos")
public class EnderecoController {

    @Autowired
    private EnderecoService enderecoService;

    @GetMapping("/cidade/{cidade}")
    public List<Endereco> getEnderecosByCidade(@PathVariable String cidade) {
        return enderecoService.findByCidade(cidade);
    }

    @GetMapping("/estado/{estado}")
    public List<Endereco> getEnderecosByEstado(@PathVariable String estado) {
        return enderecoService.findByEstado(estado);
    }

    @PostMapping
    public Endereco createEndereco(@RequestBody Endereco endereco) {
        return enderecoService.saveEndereco(endereco);
    }
}