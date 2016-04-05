/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.entidades;

/**
 *
 * @author CR2 SISTEMAS
 */
public class UsuarioLogado {
    
    private String usuario;
    private String senha;

    public UsuarioLogado(String usuario, String senha) {
        this.usuario = usuario;
        this.senha = senha;
    }

    public UsuarioLogado() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    
    
    
}
