package com.example.CPE.controller;

import com.example.CPE.entity.Participante;
import com.example.CPE.service.ParticipanteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/participantes")
public class ParticipanteController {

    @Autowired
    private ParticipanteService participanteService;

    @GetMapping
    public ResponseEntity<List<Participante>> listarTodos() {
        return ResponseEntity.ok(participanteService.listarTodos());
    }

    @GetMapping("/{cpf}")
    public ResponseEntity<Participante> buscarPorCpf(@PathVariable String cpf) {
        return participanteService.buscarPorCpf(cpf)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/buscar/nome")
    public ResponseEntity<List<Participante>> buscarPorNome(@RequestParam String nome) {
        return ResponseEntity.ok(participanteService.buscarPorNome(nome));
    }

    @GetMapping("/buscar/email")
    public ResponseEntity<List<Participante>> buscarPorEmail(@RequestParam String email) {
        return ResponseEntity.ok(participanteService.buscarPorEmail(email));
    }

    @PostMapping
    public ResponseEntity<Participante> criar(@RequestBody Participante participante) {
        return ResponseEntity.status(HttpStatus.CREATED).body(participanteService.salvar(participante));
    }

    @PutMapping("/{cpf}")
    public ResponseEntity<Participante> atualizar(@PathVariable String cpf, @RequestBody Participante participante) {
        if (!participanteService.existePorCpf(cpf)) {
            return ResponseEntity.notFound().build();
        }
        participante.setCpf(cpf);
        return ResponseEntity.ok(participanteService.salvar(participante));
    }

}