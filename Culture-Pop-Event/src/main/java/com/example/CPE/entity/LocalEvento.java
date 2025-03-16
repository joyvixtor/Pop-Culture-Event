package com.example.CPE.entity;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "localevento")

public class LocalEvento {
    @Id
    @Column(name = "id_local")
    private Integer idLocal;

    @Column(name = "geolocalizacao", length = 100)
    private String geolocalizacao;

    @Column(name = "nome", length = 100, nullable = false)
    private String nome;

    @Column(name = "capacidade", nullable = false)
    private Integer capacidade;
}
