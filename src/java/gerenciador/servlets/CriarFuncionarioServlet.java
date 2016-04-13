package gerenciador.servlets;

import gerenciador.entidades.Pessoa;
import gerenciador.persistencia.DaoException;
import gerenciador.persistencia.PessoaDaoFactory;
import gerenciador.persistencia.PessoaDaoInterface;
import gerenciador.servlets.utils.SessionUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)

public class CriarFuncionarioServlet extends HttpServlet {

    private String acesso;
    private String nome;
    private String email;
    private String envioEmails;
    private String matricula;
    private String admissao;
    private String qualificacao;
    private String cargoPrincipal;
    private String cargoSecundario;
    private String setor;
    private String turno;
    private String login;
    private String senha;
    private String dataExpiracao;
    private String situacao;
    private String enviaAviso;
    private String rg;
    private String cpf;
    private String dataNascimento;
    private String ctps;
    private String pis;
    private String planoSaude;
    private String pais;
    private String cep;
    private String endereco;
    private String numero;
    private String bairro;
    private String complemento;
    private String estado;
    private String cidade;
    private String telResidencial;
    private String telCel;
    private String celEmerg;
    private InputStream is = null;
    private byte[] foto = null;
    private String notasMedicas;
    private String alergiasReacoes;
    private String medicamentos;
    private String contatoEmerg;
    private String sangue;
    private String peso;
    private String doaOrgao;
    private String problemasSaude;
    private String log;
    private HttpServletRequest request;
    private String pagina;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String acesso = request.getParameter("acesso");
        nome = request.getParameter("nome");
        email = request.getParameter("email");
        envioEmails = request.getParameter("enviaAviso");
        matricula = request.getParameter("matricula");
        admissao = request.getParameter("dataAdmissao");
        qualificacao = request.getParameter("qualificacao");
        cargoPrincipal = request.getParameter("cargoPrincipal");
        cargoSecundario = request.getParameter("cargoSecundario");
        setor = request.getParameter("setor");
        turno = request.getParameter("turno");
        if (turno.equals("Selecione")) {
            turno = null;
        }

        String[] aux;

        if (!nome.equals(null)) {

            aux = nome.split(" ");
            String aux1 = String.valueOf(aux[0].charAt(0));
            String aux2 = aux[aux.length - 1];

            login = aux1 + aux2;
            
            login = SessionUtils.getSenha(login);

        }

        senha = request.getParameter("senha");
        dataExpiracao = request.getParameter("dataExpiracao");
        situacao = request.getParameter("situacao");
        enviaAviso = request.getParameter("aviso");
        rg = request.getParameter("rg");
        cpf = request.getParameter("cpf");
        dataNascimento = request.getParameter("dataNascimento");
        ctps = request.getParameter("ctps");
        pis = request.getParameter("pis");
        if (request.getParameter("planoSaude") != null) {
            if (request.getParameter("planoSaude").equals("Sim")) {
                planoSaude = request.getParameter("qualPlano");
            }
        } else {
            planoSaude = null;
        }
        pais = request.getParameter("paises");
        cep = request.getParameter("cep");
        endereco = request.getParameter("rua");
        numero = request.getParameter("numero");
        bairro = request.getParameter("bairro");
        complemento = request.getParameter("complemento");
        estado = request.getParameter("estado");
        cidade = request.getParameter("cidade");
        telResidencial = request.getParameter("telefoneRes");
        telCel = request.getParameter("telefoneCel");
        celEmerg = request.getParameter("telefoneEmer");
        problemasSaude = request.getParameter("problemasSaude");
        notasMedicas = request.getParameter("notaMedica");
        alergiasReacoes = request.getParameter("alergReac");
        medicamentos = request.getParameter("medicamento");
        contatoEmerg = request.getParameter("contatoEmerg");
        sangue = request.getParameter("tipoSanguineo");
        peso = request.getParameter("peso");
        doaOrgao = request.getParameter("doaOrgao");

        Part filePart = request.getPart("foto");
        if (filePart != null) {

            is = filePart.getInputStream();

        }
        log = "Funcionario " + nome + " criado por: " + SessionUtils.getUsuarioLogado(request.getSession()).getNome() + " em " + SessionUtils.getDataHora();
        Pessoa pessoa = new Pessoa(acesso, nome, email, envioEmails, matricula, admissao, qualificacao, cargoPrincipal, cargoSecundario, setor, turno, login, senha, dataExpiracao, situacao, enviaAviso, rg, cpf, dataNascimento, ctps, pis, planoSaude, pais, cep, endereco, numero, bairro, complemento, estado, cidade, telResidencial, telCel, celEmerg, is, notasMedicas, alergiasReacoes, medicamentos, contatoEmerg, sangue, peso, doaOrgao, problemasSaude, log);

        PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(request.getSession());

        try {
//            session.setAttribute("lista_funcionarios", dao.listarTodas());
            request.setAttribute("acao", "ListarFuncionarioAtivo");
            if (dao.verificaDuplicidade(cpf)) {

                if (dao.cadastrar(pessoa)) {
                    File file = new File("R:\\Qualidade\\Recursos Humanos\\" + nome + "_" + String.valueOf(dao.buscaMatricula(cpf)));
                    file.mkdir();
                    SessionUtils.GerarLogFuncionario(log);
                    pagina = "/paginas/others/sucesso.jsp";

                } else {

                    pagina = "/paginas/others/fracasso.jsp";

                }

            } else {

                pagina = "/paginas/others/funcionarioCadastrado.jsp";
            }
        } catch (DaoException ex) {
            ex.printStackTrace();
        }

//        response.sendRedirect(pagina);
        RequestDispatcher requestDispatcher
                = getServletContext().getRequestDispatcher(pagina);
        requestDispatcher.forward(request, response);
    }
}
