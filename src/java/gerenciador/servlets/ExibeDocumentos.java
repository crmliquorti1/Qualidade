/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.servlets;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CR2 SISTEMAS
 */
public class ExibeDocumentos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/docx");

        String arquivo = request.getParameter("url");
        arquivo = arquivo.replace("file:/", "");
        
        String [] extencao = arquivo.split(".");
        System.out.println(arquivo.length());
        for (int i = 0; i < extencao.length; i++) {
            System.out.println("roda");
            System.out.println(extencao [i]);
        }
        
//        System.out.println("Está aparecendo: " + arquivo);
//        System.out.println("Deve aparecer: C:\\Users\\CR2 SISTEMAS\\Downloads\\(752618626) capabeta-3 (1).docx");

        File file = new File(arquivo);
//        File afile[] = file.listFiles();
        int i = 0;

//        File arquivos = afile[i];
//            System.out.println(arquivos.length());
//            System.out.println(arquivos.toURI());
//        System.out.println(file.toURI().toURL());
//            System.out.println(arquivos.getName());

        response.setHeader("Content-Disposition", "attachment; filename=" + file.getName() + ";");
        URL url = file.toURI().toURL();
        BufferedInputStream leitor = new BufferedInputStream(url.openStream(), 4 * 1024);
        OutputStream escritor = response.getOutputStream();
        byte[] buffer = new byte[4 * 1024];
        int size = 0;
        while ((size = leitor.read(buffer, 0, buffer.length)) != -1) {
            escritor.write(buffer, 0, size);
        }
        escritor.close();
        leitor.close();

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
