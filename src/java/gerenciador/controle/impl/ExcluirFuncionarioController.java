package gerenciador.controle.impl;

import gerenciador.controle.AbstractController;
import gerenciador.entidades.Pessoa;
import gerenciador.persistencia.DaoException;
import gerenciador.persistencia.PessoaDaoFactory;
import gerenciador.persistencia.PessoaDaoInterface;
import gerenciador.servlets.utils.SessionUtils;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vinicius Nunes
 */
public class ExcluirFuncionarioController extends AbstractController {

    @Override
    public void execute() {

        HttpSession session = this.getRequest().getSession();

        PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(session);
        
        try {
            this.getRequest().setAttribute("acao", "ListarFuncionarioAtivo");
            String log = "Funcionario " + dao.buscarPessoa(Integer.parseInt(this.getRequest().getParameter("id_funcionario"))).getNome() + " Excluído por: " + SessionUtils.getUsuarioLogado(this.getRequest().getSession()).getNome() + " em " + SessionUtils.getDataHora();
            if (dao.excluirPessoa(Integer.parseInt(this.getRequest().getParameter("id_funcionario")), log)) {
  
                SessionUtils.GerarLogFuncionario(log);
                
                this.setReturnPage("/paginas/others/sucesso.jsp");
//                this.getReturnPage();
            }
        } catch (DaoException ex) {

            this.setReturnPage("/paginas/others/fracasso.jsp");
           

        }

    }

}
