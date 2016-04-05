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
import gerenciador.persistencia.PessoaDaoFactory;
import gerenciador.persistencia.PessoaDaoInterface;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vinicius Nunes
 */
public class CadastrarPacienteController extends AbstractController {

    private String hospital;
    private String andar;
    private String quarto;
    private String leito;
    private String nomeAtendente;
    private String telefone;
    private String ramal;
    private String outrasIformacoes;
    private String raPaciente;
    private String nomePaciente;
    private String CPFPaciente;
    private String dataNasc;
    private String idade;
    private String horaEntradaPaciente;
    private String internadoDesde;
    private String cq;
    private String hd;
    private String outrasInformacoesPaciente;
    private String convenio;
    private String numeroCarteirinha;
    private String medicoSolicitante;
    private String prontuario;
    private String atendimento;
    private String senha;
    private String crm;
    private String procedimento;
    private String exames;

    @Override
    public void execute() {

        hospital = this.getRequest().getParameter("hospital");
        quarto = this.getRequest().getParameter("quarto");
        leito = this.getRequest().getParameter("leito");
        nomeAtendente = this.getRequest().getParameter("nomeAtendente");
        telefone = this.getRequest().getParameter("telefone");
        ramal = this.getRequest().getParameter("ramal");
        outrasIformacoes = this.getRequest().getParameter("outrasIformacoes");
        raPaciente = this.getRequest().getParameter("raPaciente");

        nomePaciente = this.getRequest().getParameter("nomePaciente");
        CPFPaciente = this.getRequest().getParameter("cpf");

        dataNasc = this.getRequest().getParameter("dataNasc");

        idade = this.getRequest().getParameter("idade");
        horaEntradaPaciente = this.getRequest().getParameter("horaEntradaPaciente");
        internadoDesde = this.getRequest().getParameter("internadoDesde");
        cq = this.getRequest().getParameter("cq");
        hd = this.getRequest().getParameter("hd");
        outrasInformacoesPaciente = this.getRequest().getParameter("outrasInformacoesPaciente");
        convenio = this.getRequest().getParameter("convenio");
        numeroCarteirinha = this.getRequest().getParameter("numeroCarteirinha");
        medicoSolicitante = this.getRequest().getParameter("medicoSolicitante");
        prontuario = this.getRequest().getParameter("prontuario");
        atendimento = this.getRequest().getParameter("atendimento");
        senha = this.getRequest().getParameter("senha");
        crm = this.getRequest().getParameter("crm");

        Paciente paciente = new Paciente(hospital, andar, quarto, leito, nomeAtendente, telefone, ramal, outrasIformacoes, raPaciente, nomePaciente, CPFPaciente, dataNasc, idade, horaEntradaPaciente, internadoDesde, cq, hd, outrasInformacoesPaciente, convenio, numeroCarteirinha, medicoSolicitante, prontuario, atendimento, senha, crm);
        HttpSession session = this.getRequest().getSession();
        this.getRequest().setAttribute("acao", "ListarPaciente");
        try {
            PacienteDaoInterface dao = PacienteDaoFactory.getPacienteDAO(session);
//            this.getRequest().setAttribute("pagina", "FrontControllerServlet?controle=ListarFuncionario");
            if (dao.cadastrar(paciente)) {

                this.setReturnPage("/paginas/others/sucesso.jsp");
                this.getReturnPage();

            } else {
                this.setReturnPage("/paginas/others/fracasso.jsp");
            }

        } catch (SQLException ex) {
            Logger.getLogger(CadastrarPacienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DaoException ex) {
            Logger.getLogger(CadastrarPacienteController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
