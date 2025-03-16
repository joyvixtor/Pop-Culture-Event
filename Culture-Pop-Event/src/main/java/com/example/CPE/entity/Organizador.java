package com.example.CPE.entity;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "organizador")
public class Organizador {
    @Id
    @Column(name = "cpf_participante", length = 11)
    private String cpfParticipante;

    @Column(name = "cargo", length = 50)
    private String cargo;

    @Column(name = "departamento", length = 50)
    private String departamento;

    @ManyToOne
    @JoinColumn(name = "cpf_supervisor", referencedColumnName = "cpf_participante")
    private Organizador supervisor;

    @OneToOne
    @MapsId
    @JoinColumn(name = "cpf_participante")
    private Participante participante;
}