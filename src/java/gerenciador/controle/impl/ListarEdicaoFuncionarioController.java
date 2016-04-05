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
public class ListarEdicaoFuncionarioController extends AbstractController {

    @Override
    public void execute() {

        try {

            PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(this.getRequest().getSession());

            Pessoa funcionario = dao.buscarPessoa(Integer.parseInt(this.getRequest().getParameter("id_funcionario")));
            this.getRequest().setAttribute("funcionario", funcionario);
            this.getRequest().setAttribute("foto", funcionario.getEnconder());
            this.setReturnPage("/paginas/views/funcionario_alterar.jsp");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}
