package com.example.CPE.repository;

import com.example.CPE.entity.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.math.BigDecimal;
import java.util.List;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Integer> {
    List<Produto> findByNomeContainingIgnoreCase(String nome);
    List<Produto> findByCategoriaContainingIgnoreCase(String categoria);
    List<Produto> findByEstandeId(Integer estandeId);
    List<Produto> findByPrecoLessThanEqual(BigDecimal preco);
    List<Produto> findByPrecoGreaterThanEqual(BigDecimal preco);
}