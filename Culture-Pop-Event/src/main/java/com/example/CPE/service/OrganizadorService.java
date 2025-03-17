package com.example.CPE.service;

import com.example.CPE.entity.Organizador;
import com.example.CPE.repository.OrganizadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class OrganizadorService {

    @Autowired
    private OrganizadorRepository organizadorRepository;

    public List<Organizador> listarTodos() {
        return organizadorRepository.findAll();
    }

    public Optional<Organizador> buscarPorCpf(String cpf) {
        return organizadorRepository.findById(cpf);
    }

    public List<Organizador> buscarPorNome(String nome) {
        return organizadorRepository.findByNomeContaining(nome);
    }

    public List<Organizador> buscarPorCargo(String cargo) {
        return organizadorRepository.findByCargoContainingIgnoreCase(cargo);
    }

    public List<Organizador> buscarPorDepartamento(String departamento) {
        return organizadorRepository.findByDepartamentoContainingIgnoreCase(departamento);
    }

    public List<Organizador> buscarPorSupervisor(String cpfSupervisor) {
        return organizadorRepository.findByCpfSupervisor(cpfSupervisor);
    }

    public Organizador salvar(Organizador organizador) {
        return organizadorRepository.save(organizador);
    }

    public void excluir(String cpf) {
        organizadorRepository.deleteById(cpf);
    }

    public boolean existePorCpf(String cpf) {
        return organizadorRepository.existsById(cpf);
    }
}