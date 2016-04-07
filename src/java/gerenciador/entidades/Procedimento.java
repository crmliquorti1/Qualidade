/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.entidades;

/**
 *
 * @author ti1
 */
public class Procedimento {
    
    private int id;
    private String grupo;
    private String mnemonico;
    private String sigla;
    private String descricao;

    public Procedimento() {
    }

    public Procedimento(int id, String grupo, String mnemonico, String sigla, String descricao) {
        this.id = id;
        this.grupo = grupo;
        this.mnemonico = mnemonico;
        this.sigla = sigla;
        this.descricao = descricao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }
    
    
    public String getMnemonico() {
        return mnemonico;
    }

    public void setMnemonico(String mnemonico) {
        this.mnemonico = mnemonico;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
