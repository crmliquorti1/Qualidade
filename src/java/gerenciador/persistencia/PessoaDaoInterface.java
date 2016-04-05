/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.persistencia;

import gerenciador.entidades.Pessoa;
import java.util.List;

/**
 *
 * @author Vinicius Nunes
 */
public interface PessoaDaoInterface {
    
    boolean cadastrar (Pessoa pessoa) throws DaoException;
    boolean verificaDuplicidade (String cpf) throws DaoException;
    List <Pessoa> listarTodasAtivos () throws DaoException;
    List <Pessoa> listarTodasInativos () throws DaoException;
    boolean excluirPessoa (int id_funcionario, String log) throws DaoException;
    Pessoa buscarPessoa (int id_funcionario) throws DaoException;
    boolean editarPessoa (Pessoa pessoa) throws DaoException;
    boolean editarPessoaSFoto (Pessoa pessoa) throws DaoException;
    Pessoa validaAcesso(String login, String senha) throws DaoException;
     
    
    
        
}
