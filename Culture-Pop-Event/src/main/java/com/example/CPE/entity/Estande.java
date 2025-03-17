package com.example.CPE.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "estande")
public class Estande {

    @Id
    @Column(name = "id_estande")
    private Integer id;

    private String categoria;

    @Column(nullable = false)
    private String nome;

    @OneToMany(mappedBy = "estande")
    private List<Produto> produtos;
    // Getters e Setters
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Produto> getProdutos() {
        return produtos;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }
}