/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.persistencia;

import gerenciador.servlets.utils.SessionUtils;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CR2 SISTEMAS
 */
public class PacienteDaoFactory {
    
    public static PacienteDaoImpl getPacienteDAO(HttpSession session) throws SQLException, DaoException {       
        return new PacienteDaoImpl(SessionUtils.getConexao(session));
    }
    
}
