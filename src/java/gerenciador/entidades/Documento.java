/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.entidades;

import java.net.URL;

/**
 *
 * @author CR2 SISTEMAS
 */
public class Documento {
    
    private String nome;
    private URL url;


    public Documento() {
    }

    public Documento(String nome, URL url) {
        this.nome = nome;
        this.url = url;

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public URL getUrl() {
        return url;
    }

    public void setUrl(URL url) {
        this.url = url;
    }

    
    
}
