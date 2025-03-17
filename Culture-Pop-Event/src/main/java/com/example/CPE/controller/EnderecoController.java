package com.example.CPE.controller;

import com.example.CPE.entity.Endereco;
import com.example.CPE.service.EnderecoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/enderecos")
public class EnderecoController {

    @Autowired
    private EnderecoService enderecoService;

    @GetMapping
    public ResponseEntity<List<Endereco>> listarTodos() {
        return ResponseEntity.ok(enderecoService.listarTodos());
    }

    @GetMapping("/{cep}")
    public ResponseEntity<Endereco> buscarPorCep(@PathVariable String cep) {
        return enderecoService.buscarPorCep(cep)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Endereco> criar(@RequestBody Endereco endereco) {
        return ResponseEntity.status(HttpStatus.CREATED).body(enderecoService.salvar(endereco));
    }

    @PutMapping("/{cep}")
    public ResponseEntity<Endereco> atualizar(@PathVariable String cep, @RequestBody Endereco endereco) {
        if (!enderecoService.existePorCep(cep)) {
            return ResponseEntity.notFound().build();
        }
        endereco.setCep(cep);
        return ResponseEntity.ok(enderecoService.salvar(endereco));
    }

    @DeleteMapping("/{cep}")
    public ResponseEntity<Void> excluir(@PathVariable String cep) {
        if (!enderecoService.existePorCep(cep)) {
            return ResponseEntity.notFound().build();
        }
        enderecoService.excluir(cep);
        return ResponseEntity.noContent().build();
    }
}