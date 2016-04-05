package gerenciador.controle.impl;

import gerenciador.controle.AbstractController;
import gerenciador.entidades.Pessoa;
import gerenciador.persistencia.PessoaDaoFactory;
import gerenciador.persistencia.PessoaDaoInterface;

/**
 *
 * @author CR2 SISTEMAS
 */
public class PerfilFuncionarioController extends AbstractController{

    @Override
    public void execute() {
        
        try {
            
            PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(this.getRequest().getSession());

            Pessoa funcionario = dao.buscarPessoa(Integer.parseInt(this.getRequest().getParameter("id_funcionario")));
            this.getRequest().setAttribute("funcionario", funcionario);
            this.getRequest().setAttribute("foto", funcionario.getEnconder());
            this.setReturnPage("/paginas/views/perfilFuncionario.jsp");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
}
