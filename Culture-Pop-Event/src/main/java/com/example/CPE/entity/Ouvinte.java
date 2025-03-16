package com.example.CPE.entity;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "ouvinte")

public class Ouvinte {
    @Id
    @Column(name = "cpf_participante", length = 11)
    private String cpfParticipante;

    @Column(name = "numero_do_ingresso", length = 15)
    private String numeroIngresso;

    @OneToOne
    @MapsId
    @JoinColumn(name = "cpf_participante")
    private Participante participante;
}
