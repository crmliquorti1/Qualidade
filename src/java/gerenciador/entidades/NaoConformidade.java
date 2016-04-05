/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.entidades;

import java.util.Date;


/**
 *
 * @author CR2 SISTEMAS
 */
public class NaoConformidade {
    
    private Integer id;
    private String classificacao;
    private String subclassificacao;
    private String variavel;
    private Date data;
    private String notificacaoFinalizada;
    private String periodo;
    private String descricaoAcao;
    private String notificante;
    private String notificado;
    private String tipo;
    private String descricao;
    private String parecer;
    private String recomendacoes;

    public NaoConformidade() {
    }

    public NaoConformidade(String classificacao, String subclassificacao, String variavel, Date data, String notificacaoFinalizada, String periodo, String descricaoAcao, String notificante, String notificado, String tipo, String descricao, String parecer, String recomendacoes) {
        this.classificacao = classificacao;
        this.subclassificacao = subclassificacao;
        this.variavel = variavel;
        this.data = data;
        this.notificacaoFinalizada = notificacaoFinalizada;
        this.periodo = periodo;
        this.descricaoAcao = descricaoAcao;
        this.notificante = notificante;
        this.notificado = notificado;
        this.tipo = tipo;
        this.descricao = descricao;
        this.parecer = parecer;
        this.recomendacoes = recomendacoes;
    }

    public NaoConformidade(Integer id, String classificacao, String subclassificacao, String variavel, Date data, String notificacaoFinalizada, String periodo, String descricaoAcao, String notificante, String notificado, String tipo, String descricao, String parecer, String recomendacoes) {
        this.id = id;
        this.classificacao = classificacao;
        this.subclassificacao = subclassificacao;
        this.variavel = variavel;
        this.data = data;
        this.notificacaoFinalizada = notificacaoFinalizada;
        this.periodo = periodo;
        this.descricaoAcao = descricaoAcao;
        this.notificante = notificante;
        this.notificado = notificado;
        this.tipo = tipo;
        this.descricao = descricao;
        this.parecer = parecer;
        this.recomendacoes = recomendacoes;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(String classificacao) {
        this.classificacao = classificacao;
    }

    public String getSubclassificacao() {
        return subclassificacao;
    }

    public void setSubclassificacao(String subclassificacao) {
        this.subclassificacao = subclassificacao;
    }

    public String getVariavel() {
        return variavel;
    }

    public void setVariavel(String variavel) {
        this.variavel = variavel;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public String getNotificacaoFinalizada() {
        return notificacaoFinalizada;
    }

    public void setNotificacaoFinalizada(String notificacaoFinalizada) {
        this.notificacaoFinalizada = notificacaoFinalizada;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getDescricaoAcao() {
        return descricaoAcao;
    }

    public void setDescricaoAcao(String descricaoAcao) {
        this.descricaoAcao = descricaoAcao;
    }

    public String getNotificante() {
        return notificante;
    }

    public void setNotificante(String notificante) {
        this.notificante = notificante;
    }

    public String getNotificado() {
        return notificado;
    }

    public void setNotificado(String notificado) {
        this.notificado = notificado;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getParecer() {
        return parecer;
    }

    public void setParecer(String parecer) {
        this.parecer = parecer;
    }

    public String getRecomendacoes() {
        return recomendacoes;
    }

    public void setRecomendacoes(String recomendacoes) {
        this.recomendacoes = recomendacoes;
    }
    
    
    
}
