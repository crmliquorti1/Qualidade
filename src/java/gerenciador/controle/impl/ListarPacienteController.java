/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.controle.impl;

import gerenciador.controle.AbstractController;
import gerenciador.entidades.Paciente;
import gerenciador.persistencia.DaoException;
import gerenciador.persistencia.PacienteDaoFactory;
import gerenciador.persistencia.PacienteDaoInterface;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author CR2 SISTEMAS
 */
public class ListarPacienteController extends AbstractController{

    @Override
    public void execute() {
        
        List paciente = new ArrayList<Paciente>();
        
        try {            
            
            PacienteDaoInterface dao = PacienteDaoFactory.getPacienteDAO(this.getRequest().getSession());
            paciente = dao.listarTodas();
            
            this.getRequest().setAttribute("pacientes", paciente);
            this.setReturnPage("/paginas/views/pacientes.jsp");
            
        } catch (SQLException ex) {
            Logger.getLogger(ListarPacienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DaoException ex) {
            Logger.getLogger(ListarPacienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
