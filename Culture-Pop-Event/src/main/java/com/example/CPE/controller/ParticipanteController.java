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

    private final ParticipanteService participanteService;

    @Autowired
    public ParticipanteController(ParticipanteService participanteService) {
        this.participanteService = participanteService;
    }

    @GetMapping
    public ResponseEntity<List<Participante>> getAllParticipantes() {
        List<Participante> participantes = participanteService.findAll();
        return new ResponseEntity<>(participantes, HttpStatus.OK);
    }

    @GetMapping("/{cpf}")
    public ResponseEntity<Participante> getParticipanteById(@PathVariable String cpf) {
        return participanteService.findById(cpf)
                .map(participante -> new ResponseEntity<>(participante, HttpStatus.OK))
                .orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    @PostMapping
    public ResponseEntity<Participante> createParticipante(@RequestBody Participante participante) {
        Participante savedParticipante = participanteService.save(participante);
        return new ResponseEntity<>(savedParticipante, HttpStatus.CREATED);
    }

    @PutMapping("/{cpf}")
    public ResponseEntity<Participante> updateParticipante(@PathVariable String cpf, @RequestBody Participante participante) {
        if (!participanteService.findById(cpf).isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        participante.setCpf(cpf);
        return new ResponseEntity<>(participanteService.save(participante), HttpStatus.OK);
    }

    @DeleteMapping("/{cpf}")
    public ResponseEntity<Void> deleteParticipante(@PathVariable String cpf) {
        if (!participanteService.findById(cpf).isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        participanteService.deleteById(cpf);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}