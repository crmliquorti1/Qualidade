/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.persistencia;

import gerenciador.servlets.utils.SessionUtils;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CR2 SISTEMAS
 */
public class PessoaDaoFactory {

    public static PessoaDaoImpl getPessoaDAO(HttpSession session) {       
        return new PessoaDaoImpl(SessionUtils.getConexao(session));
    }
    
}
