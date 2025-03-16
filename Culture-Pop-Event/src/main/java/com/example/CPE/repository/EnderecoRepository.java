package com.example.CPE.repository;

import com.example.CPE.entity.Endereco;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface EnderecoRepository extends JpaRepository<Endereco, String> {
    List<Endereco> findByCidade(String cidade);
    List<Endereco> findByEstado(String estado);
}