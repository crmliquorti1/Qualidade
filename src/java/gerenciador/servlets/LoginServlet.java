package gerenciador.servlets;

import gerenciador.entidades.Pessoa;
import gerenciador.persistencia.DaoException;
import gerenciador.persistencia.PessoaDaoFactory;
import gerenciador.persistencia.PessoaDaoInterface;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final String userID = null;
    private final String password = null;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // get request parameters for userID and password

        PessoaDaoInterface dao = PessoaDaoFactory.getPessoaDAO(request.getSession());
        String usuarioRequest = request.getParameter("login");
        String senhaRequest = request.getParameter("senha");
        Pessoa pessoa = null;
        try {
            pessoa = dao.validaAcesso(usuarioRequest, senhaRequest);
        } catch (DaoException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (pessoa != null && (!pessoa.getSituacao().equals("Inativo"))) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", pessoa);
            //setting session to expiry in 30 mins
            session.setMaxInactiveInterval(30 * 60);
            Cookie userName = new Cookie("usuario", usuarioRequest);
//            System.out.println(userName.getValue());
            userName.setMaxAge(30 * 60);
            response.addCookie(userName);
            response.sendRedirect("paginas/others/home.jsp");
//            System.out.println(userName.getValue());
        } else {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.html");
            PrintWriter out = response.getWriter();
            out.println("<font color=red>Usuario ou senha incorretos.</font>");
            rd.include(request, response);
        }

    }
}
