/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.servlets.utils;

import gerenciador.entidades.Pessoa;
import gerenciador.persistencia.ConexaoInterface;
import gerenciador.persistencia.ConexaoMySQL;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.Normalizer;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.servlet.http.HttpSession;

public class SessionUtils {

    public static ConexaoInterface getConexao(HttpSession session) {
        ConexaoInterface conexao;
        conexao = (ConexaoInterface) session.getAttribute("conexaoSessao");
        if (conexao == null) {
            conexao = new ConexaoMySQL("localhost", 3306,
                    "qually", "root", "Desenvolvimento@2015");
            session.setAttribute("conexaoSessao", conexao);
        }
        return conexao;
    }

    public static void GerarLogFuncionario(String log) {

        BufferedWriter bw = null;

        try {
            bw = new BufferedWriter(new FileWriter("C:\\Users\\ti1\\Desktop\\logs\\logFuncionario.txt", true));
            bw.write(log);
            bw.newLine();
            bw.flush();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } finally { // always close the file
            if (bw != null) {
                try {
                    bw.close();
                } catch (IOException ioe2) {
                    // just ignore it
                }
            }
        }

    }

    public static String getDataHora() {

        Locale locale = new Locale("pt", "BR");
        GregorianCalendar calendar = new GregorianCalendar();
        SimpleDateFormat formatador = new SimpleDateFormat("dd' de 'MMMMM' de 'yyyy' - 'HH':'mm'h'", locale);
        String data = formatador.format(calendar.getTime());

        return data;
    }

    public static String getData() {

        Locale locale = new Locale("pt", "BR");
        GregorianCalendar calendar = new GregorianCalendar();
        SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy", locale);
        String data = formatador.format(calendar.getTime());

        return data;
    }
    
     public static String getHora () {
        
        Locale locale = new Locale("pt", "BR");
        GregorianCalendar calendar = new GregorianCalendar();
        SimpleDateFormat formatador = new SimpleDateFormat("HH:mm", locale);
        String data = formatador.format(calendar.getTime());
        
        return data;
    }
    

    public static Pessoa getUsuarioLogado(HttpSession session) {
        Pessoa usuarioLogado = (Pessoa) session.getAttribute("usuario");
        return usuarioLogado;
    }

    public static String getSenha(String str) {
        String nfdNormalizedString = Normalizer.normalize(str, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        return pattern.matcher(nfdNormalizedString).replaceAll("").toLowerCase();
    }

}
