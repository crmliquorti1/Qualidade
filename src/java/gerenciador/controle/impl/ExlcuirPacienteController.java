/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.controle.impl;

import gerenciador.controle.AbstractController;
import gerenciador.persistencia.DaoException;
import gerenciador.persistencia.PacienteDaoFactory;
import gerenciador.persistencia.PacienteDaoInterface;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CR2 SISTEMAS
 */
public class ExlcuirPacienteController extends AbstractController {

    @Override
    public void execute() {

        HttpSession session = this.getRequest().getSession();

//        PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(session);
        this.getRequest().setAttribute("acao", "ListarPaciente");

        try {
            PacienteDaoInterface dao = PacienteDaoFactory.getPacienteDAO(session);
            if (dao.excluirPaciente(Integer.parseInt(this.getRequest().getParameter("id_paciente")))) {
                this.setReturnPage("/paginas/others/sucesso.jsp");
                this.getReturnPage();
            }

        } catch (SQLException ex) {
            Logger.getLogger(ExlcuirPacienteController.class.getName()).log(Level.SEVERE, null, ex);
            this.setReturnPage("/paginas/others/fracasso.jsp");
        } catch (DaoException ex) {
            Logger.getLogger(ExlcuirPacienteController.class.getName()).log(Level.SEVERE, null, ex);
            this.setReturnPage("/paginas/others/fracasso.jsp");
        }

    }

}
