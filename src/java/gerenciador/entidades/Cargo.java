/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.entidades;

/**
 *
 * @author Vinicius Nunes
 */
public class Cargo {
    
    private Long id_cargo;
    private String nome_cargo;
    private String atruibuicoes;

    public Cargo() {
    }

    public Cargo(String nome_cargo, String atruibuicoes) {
        this.nome_cargo = nome_cargo;
        this.atruibuicoes = atruibuicoes;
    }

    public String getAtruibuicoes() {
        return atruibuicoes;
    }

    public void setAtruibuicoes(String atruibuicoes) {
        this.atruibuicoes = atruibuicoes;
    }

    public Long getId_cargo() {
        return id_cargo;
    }

    public void setId_cargo(Long id_cargo) {
        this.id_cargo = id_cargo;
    }

    public String getNome_cargo() {
        return nome_cargo;
    }

    public void setNome_cargo(String nome_cargo) {
        this.nome_cargo = nome_cargo;
    }
    
    
    
}
