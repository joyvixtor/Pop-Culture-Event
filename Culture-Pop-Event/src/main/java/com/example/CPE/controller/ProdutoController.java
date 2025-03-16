package com.example.CPE.controller;

import com.example.CPE.entity.Produto;
import com.example.CPE.service.ProdutoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/produtos")
public class ProdutoController {

    @Autowired
    private ProdutoService produtoService;

    @GetMapping("/categoria/{categoria}")
    public List<Produto> getProdutosByCategoria(@PathVariable String categoria) {
        return produtoService.findByCategoria(categoria);
    }

    @GetMapping("/preco/{preco}")
    public List<Produto> getProdutosByPrecoLessThan(@PathVariable Double preco) {
        return produtoService.findByPrecoLessThan(preco);
    }

    @PostMapping
    public Produto createProduto(@RequestBody Produto produto) {
        return produtoService.saveProduto(produto);
    }
}