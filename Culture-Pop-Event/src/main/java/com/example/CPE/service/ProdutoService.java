package com.example.CPE.service;

import com.example.CPE.entity.Produto;
import com.example.CPE.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ProdutoService {

    @Autowired
    private ProdutoRepository produtoRepository;

    public List<Produto> findByCategoria(String categoria) {
        return produtoRepository.findByCategoria(categoria);
    }

    public List<Produto> findByPrecoLessThan(Double preco) {
        return produtoRepository.findByPrecoLessThan(preco);
    }

    public Produto saveProduto(Produto produto) {
        return produtoRepository.save(produto);
    }
}