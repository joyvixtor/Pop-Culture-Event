package com.example.CPE.entity;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "palestrante")
public class Palestrante {

    @Id
    @Column(name = "cpf_participante")
    private String cpf;

    @Column(name = "empresa_vinculo")
    private String empresaVinculo;

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

    public String getEmpresaVinculo() {
        return empresaVinculo;
    }

    public void setEmpresaVinculo(String empresaVinculo) {
        this.empresaVinculo = empresaVinculo;
    }

    public Participante getParticipante() {
        return participante;
    }

    public void setParticipante(Participante participante) {
        this.participante = participante;
    }
}
