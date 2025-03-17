package com.example.CPE.entity;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "ouvinte")
public class Ouvinte {

    @Id
    @Column(name = "cpf_participante")
    private String cpf;

    @Column(name = "numero_do_ingresso")
    private String numeroDoIngresso;

    @OneToOne
    @MapsId
    @JoinColumn(name = "cpf_participante")
    private Participante participante;

    // Getters e Setters
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNumeroDoIngresso() {
        return numeroDoIngresso;
    }

    public void setNumeroDoIngresso(String numeroDoIngresso) {
        this.numeroDoIngresso = numeroDoIngresso;
    }

    public Participante getParticipante() {
        return participante;
    }

    public void setParticipante(Participante participante) {
        this.participante = participante;
    }
}