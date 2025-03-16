package com.example.CPE.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_produto")
    private Integer idProduto;

    @Column(name = "nome", length = 100, nullable = false)
    private String nome;

    @Column(name = "preco", nullable = false)
    private Double preco;

    @Column(name = "categoria", length = 50, nullable = false)
    private String categoria;

    @Column(name = "estoque", nullable = false)
    private Integer estoque;

    @ManyToOne
    @JoinColumn(name = "estande_id", referencedColumnName = "id_estande")
    private Estande estande;
}