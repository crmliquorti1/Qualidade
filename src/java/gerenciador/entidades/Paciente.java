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
public class Paciente {
    private int id_paciente;
    private String hospital;
    private String andar;
    private String quarto;
    private String leito;
    private String nomeAtendente;
    private String telefone;
    private String ramal;
    private String outrasIformacoes;
    private String raPaciente;
    private String nomePaciente;
    private String CPFPaciente;
    private String dataNasc;
    private String idade;
    private String horaEntradaPaciente;
    private String internadoDesde;
    private String cq;
    private String hd;
    private String outrasInformacoesPaciente;
    private String convenio;
    private String numeroCarteirinha;
    private String medicoSolicitante;
    private String prontuario;
    private String atendimento;
    private String senha;
    private String crm;
    private String procedimento;
    private String exames;

    public Paciente() {
    }
    
    
    public Paciente(String hospital, String andar, String quarto, String leito, String nomeAtendente, String telefone, String ramal, String outrasIformacoes, String raPaciente, String nomePaciente, String CPFPaciente, String dataNasc, String idade, String horaEntradaPaciente, String internadoDesde, String cq, String hd, String outrasInformacoesPaciente, String convenio, String numeroCarteirinha, String medicoSolicitante, String prontuario, String atendimento, String senha, String crm) {
        this.hospital = hospital;
        this.andar = andar;
        this.quarto = quarto;
        this.leito = leito;
        this.nomeAtendente = nomeAtendente;
        this.telefone = telefone;
        this.ramal = ramal;
        this.outrasIformacoes = outrasIformacoes;
        this.raPaciente = raPaciente;
        this.nomePaciente = nomePaciente;
        this.CPFPaciente = CPFPaciente;
        this.dataNasc = dataNasc;
        this.idade = idade;
        this.horaEntradaPaciente = horaEntradaPaciente;
        this.internadoDesde = internadoDesde;
        this.cq = cq;
        this.hd = hd;
        this.outrasInformacoesPaciente = outrasInformacoesPaciente;
        this.convenio = convenio;
        this.numeroCarteirinha = numeroCarteirinha;
        this.medicoSolicitante = medicoSolicitante;
        this.prontuario = prontuario;
        this.atendimento = atendimento;
        this.senha = senha;
        this.crm = crm;
    }

    public int getId_paciente() {
        return id_paciente;
    }

    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }
  
    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital;
    }

    public String getAndar() {
        return andar;
    }

    public void setAndar(String andar) {
        this.andar = andar;
    }

    public String getQuarto() {
        return quarto;
    }

    public void setQuarto(String quarto) {
        this.quarto = quarto;
    }

    public String getLeito() {
        return leito;
    }

    public void setLeito(String leito) {
        this.leito = leito;
    }

    public String getNomeAtendente() {
        return nomeAtendente;
    }

    public void setNomeAtendente(String nomeAtendente) {
        this.nomeAtendente = nomeAtendente;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getRamal() {
        return ramal;
    }

    public void setRamal(String ramal) {
        this.ramal = ramal;
    }

    public String getOutrasIformacoes() {
        return outrasIformacoes;
    }

    public void setOutrasIformacoes(String outrasIformacoes) {
        this.outrasIformacoes = outrasIformacoes;
    }

    public String getRaPaciente() {
        return raPaciente;
    }

    public void setRaPaciente(String raPaciente) {
        this.raPaciente = raPaciente;
    }

    public String getNomePaciente() {
        return nomePaciente;
    }

    public void setNomePaciente(String nomePaciente) {
        this.nomePaciente = nomePaciente;
    }

    public String getCPFPaciente() {
        return CPFPaciente;
    }

    public void setCPFPaciente(String CPFPaciente) {
        this.CPFPaciente = CPFPaciente;
    }

    public String getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(String dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getHoraEntradaPaciente() {
        return horaEntradaPaciente;
    }

    public void setHoraEntradaPaciente(String horaEntradaPaciente) {
        this.horaEntradaPaciente = horaEntradaPaciente;
    }

    public String getInternadoDesde() {
        return internadoDesde;
    }

    public void setInternadoDesde(String internadoDesde) {
        this.internadoDesde = internadoDesde;
    }

    public String getCq() {
        return cq;
    }

    public void setCq(String cq) {
        this.cq = cq;
    }

    public String getHd() {
        return hd;
    }

    public void setHd(String hd) {
        this.hd = hd;
    }

    public String getOutrasInformacoesPaciente() {
        return outrasInformacoesPaciente;
    }

    public void setOutrasInformacoesPaciente(String outrasInformacoesPaciente) {
        this.outrasInformacoesPaciente = outrasInformacoesPaciente;
    }

    public String getConvenio() {
        return convenio;
    }

    public void setConvenio(String convenio) {
        this.convenio = convenio;
    }

    public String getNumeroCarteirinha() {
        return numeroCarteirinha;
    }

    public void setNumeroCarteirinha(String numeroCarteirinha) {
        this.numeroCarteirinha = numeroCarteirinha;
    }

    public String getMedicoSolicitante() {
        return medicoSolicitante;
    }

    public void setMedicoSolicitante(String medicoSolicitante) {
        this.medicoSolicitante = medicoSolicitante;
    }

    public String getProntuario() {
        return prontuario;
    }

    public void setProntuario(String prontuario) {
        this.prontuario = prontuario;
    }

    public String getAtendimento() {
        return atendimento;
    }

    public void setAtendimento(String atendimento) {
        this.atendimento = atendimento;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCrm() {
        return crm;
    }

    public void setCrm(String crm) {
        this.crm = crm;
    }

    public String getProcedimento() {
        return procedimento;
    }

    public void setProcedimento(String procedimento) {
        this.procedimento = procedimento;
    }

    public String getExames() {
        return exames;
    }

    public void setExames(String exames) {
        this.exames = exames;
    }
    
    

}
