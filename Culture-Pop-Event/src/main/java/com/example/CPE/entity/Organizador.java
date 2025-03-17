package com.example.CPE.entity;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "organizador")
public class Organizador {

    @Id
    @Column(name = "cpf_participante")
    private String cpf;

    private String cargo;
    private String departamento;

    @Column(name = "cpf_supervisor")
    private String cpfSupervisor;

    @OneToOne
    @MapsId
    @JoinColumn(name = "cpf_participante")
    private Participante participante;

    @ManyToOne
    @JoinColumn(name = "cpf_supervisor", insertable = false, updatable = false)
    private Organizador supervisor;

    @OneToMany(mappedBy = "supervisor")
    private List<Organizador> subordinados;

    // Getters e Setters
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getCpfSupervisor() {
        return cpfSupervisor;
    }

    public void setCpfSupervisor(String cpfSupervisor) {
        this.cpfSupervisor = cpfSupervisor;
    }

    public Participante getParticipante() {
        return participante;
    }

    public void setParticipante(Participante participante) {
        this.participante = participante;
    }

    public Organizador getSupervisor() {
        return supervisor;
    }

    public void setSupervisor(Organizador supervisor) {
        this.supervisor = supervisor;
    }

    public List<Organizador> getSubordinados() {
        return subordinados;
    }

    public void setSubordinados(List<Organizador> subordinados) {
        this.subordinados = subordinados;
    }
}