package com.example.CPE.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Participante")

public class Participante {
    @Id
    @Column(length = 11)
    private String cpf;

    @Column(nullable = false, length = 100)
    private String nome;

    @Column(nullable = false, length = 50)
    private String email;

    @Column(length = 15)
    private String telefone;

    @ManyToOne
    @JoinColumn(name = "cep", referencedColumnName = "cep")
    private Endereco endereco;
}
