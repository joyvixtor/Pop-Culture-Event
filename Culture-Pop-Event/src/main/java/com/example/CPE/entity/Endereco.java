package com.example.CPE.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Endereco")

public class Endereco {
    @Id
    @Column(length = 9)
    private Long cep;

    @Column(nullable = false, length = 50)
    private String estado;

    @Column(nullable = false, length = 50)
    private String cidade;

    @Column(nullable = false, length = 50)
    private String bairro;

    @Column(nullable = false, length = 50)
    private String rua;
}
