/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.controle.impl;

import gerenciador.controle.AbstractController;
import gerenciador.entidades.Documento;
import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CR2 SISTEMAS
 */
public class ListarDocsController extends AbstractController {

    @Override
    public void execute() {

        File file = new File("R:\\Qualidade Documentos\\" + this.getRequest().getParameter("diretorio"));
        File afile[] = file.listFiles();
        int i = 0;
        List<Documento> lista = new ArrayList<Documento>();
        for (int j = afile.length; i < j; i++) {
            File arquivos = afile[i];

            try {
                Documento doc = new Documento(arquivos.getName(), arquivos.toURI().toURL());
                lista.add(doc);

            } catch (MalformedURLException ex) {
                ex.printStackTrace();
            }

        }

        this.getRequest().setAttribute("documentos", lista);
        this.getRequest().setAttribute("diretorio", this.getRequest().getParameter("diretorio"));
        this.setReturnPage("/paginas/views/documentos.jsp");
    }

}
