package com.example.CPE.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
public class Estande {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_estande")
    private Integer idEstande;

    @Column(name = "categoria", length = 50)
    private String categoria;

    @Column(name = "nome", length = 100, nullable = false)
    private String nome;
}