/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.persistencia;

import gerenciador.entidades.Paciente;
import gerenciador.entidades.Pessoa;
import java.util.List;

/**
 *
 * @author CR2 SISTEMAS
 */
public interface PacienteDaoInterface {
    
    boolean cadastrar (Paciente paciente) throws DaoException;
   List <Paciente> listarTodas () throws DaoException;
    boolean excluirPaciente (int id_funcionario) throws DaoException;
    Paciente buscarPaciente (int id_paciente) throws DaoException;
    boolean editarPaciente (Paciente paciente) throws DaoException;
    
}
