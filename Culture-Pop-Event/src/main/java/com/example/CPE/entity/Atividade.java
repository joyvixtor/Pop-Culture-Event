package com.example.CPE.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_atividade")
    private Integer idAtividade;

    @Column(name = "nome", length = 100, nullable = false)
    private String nome;

    @Column(name = "categoria", length = 50, nullable = false)
    private String categoria;
}