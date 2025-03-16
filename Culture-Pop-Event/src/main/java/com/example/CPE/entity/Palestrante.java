package com.example.CPE.entity;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "palestrante")

public class Palestrante {
    @Id
    @Column(name = "cpf_participante", length = 11)
    private String cpfParticipante;

    @Column(name = "empresa_vinculo", length = 100)
    private String empresaVinculo;

    @OneToOne
    @MapsId
    @JoinColumn(name = "cpf_participante")
    private Participante participante;
}
