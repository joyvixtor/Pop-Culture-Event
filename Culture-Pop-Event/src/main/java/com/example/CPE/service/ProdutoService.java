package com.example.CPE.service;

import com.example.CPE.entity.Produto;
import com.example.CPE.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Service
public class ProdutoService {

    @Autowired
    private ProdutoRepository produtoRepository;

    public List<Produto> listarTodos() {
        return produtoRepository.findAll();
    }

    public Optional<Produto> buscarPorId(Integer id) {
        return produtoRepository.findById(id);
    }

    public List<Produto> buscarPorNome(String nome) {
        return produtoRepository.findByNomeContainingIgnoreCase(nome);
    }

    public List<Produto> buscarPorCategoria(String categoria) {
        return produtoRepository.findByCategoriaContainingIgnoreCase(categoria);
    }

    public List<Produto> buscarPorEstande(Integer estandeId) {
        return produtoRepository.findByEstandeId(estandeId);
    }

    public List<Produto> buscarPorPrecoMaximo(BigDecimal precoMaximo) {
        return produtoRepository.findByPrecoLessThanEqual(precoMaximo);
    }

    public List<Produto> buscarPorPrecoMinimo(BigDecimal precoMinimo) {
        return produtoRepository.findByPrecoGreaterThanEqual(precoMinimo);
    }

    public Produto salvar(Produto produto) {
        return produtoRepository.save(produto);
    }

    public void excluir(Integer id) {
        produtoRepository.deleteById(id);
    }

    public boolean existePorId(Integer id) {
        return produtoRepository.existsById(id);
    }
}