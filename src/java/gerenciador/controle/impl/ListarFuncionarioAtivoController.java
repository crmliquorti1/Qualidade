/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.controle.impl;

import gerenciador.controle.AbstractController;
import gerenciador.entidades.Pessoa;
import gerenciador.persistencia.PessoaDaoFactory;
import gerenciador.persistencia.PessoaDaoInterface;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CR2 SISTEMAS
 */
public class ListarFuncionarioAtivoController extends AbstractController {

    @Override
    public void execute() {

        try {
            List funcionarios = new ArrayList<Pessoa>();
            PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(this.getRequest().getSession());

            funcionarios = (List) dao.listarTodasAtivos();
            this.getRequest().setAttribute("lista_funcionarios", funcionarios);
            this.setReturnPage("/paginas/views/funcionariosAtivos.jsp");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}
