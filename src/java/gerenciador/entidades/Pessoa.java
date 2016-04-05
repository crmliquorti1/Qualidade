/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.entidades;

import java.io.InputStream;

/**
 *
 * @author Vinicius Nunes
 */
public class Pessoa {

    private Integer id_funcionario;

    private String acesso;

    private String nome;

    private String email;

    private String envioEmails;

    private String matricula;

    private String admissao;

    private String qualificacao;

    private String cargoPrincipal;

    private String cargoSecundario;

    private String setor;

    private String turno;

    private String login;
    
    private String senha;

    private String dataExpiracao;

    private String situacao;

    private String enviaAviso;

    private String rg;

    private String cpf;

    private String dataNascimento;

    private String ctps;

    private String pis;

    private String planoSaude;

    private String pais;

    private String cep;

    private String endereco;

    private String numero;

    private String bairro;

    private String complemento;

    private String estado;

    private String cidade;

    private String telResidencial;

    private String telCel;

    private String celEmerg;

    private InputStream is;

    private byte[] foto;

    private String enconder;

    private String problemasSaude;

    private String notasMedicas;

    private String alergiasReacoes;

    private String medicamentos;

    private String contatoEmerg;

    private String sangue;

    private String peso;

    private String doaOrgao;
    
    private String log;
    

    public Pessoa() {
    }

    
    public Pessoa(String acesso, String nome, String email, String envioEmails, String matricula, String admissao, String qualificacao, String cargoPrincipal, String cargoSecundario, String setor, String turno, String login, String senha, String dataExpiracao, String situacao, String enviaAviso, String rg, String cpf, String dataNascimento, String ctps, String pis, String planoSaude, String pais, String cep, String endereco, String numero, String bairro, String complemento, String estado, String cidade, String telResidencial, String telCel, String celEmerg, InputStream is, String notasMedicas, String alergiasReacoes, String medicamentos, String contatoEmerg, String sangue, String peso, String doaOrgao, String problemasSaude, String log) {
        this.acesso = acesso;
        this.nome = nome;
        this.email = email;
        this.envioEmails = envioEmails;
        this.matricula = matricula;
        this.admissao = admissao;
        this.qualificacao = qualificacao;
        this.cargoPrincipal = cargoPrincipal;
        this.cargoSecundario = cargoSecundario;
        this.setor = setor;
        this.turno = turno;
        this.login = login;
        this.senha = senha;
        this.dataExpiracao = dataExpiracao;
        this.situacao = situacao;
        this.enviaAviso = enviaAviso;
        this.rg = rg;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.ctps = ctps;
        this.pis = pis;
        this.planoSaude = planoSaude;
        this.pais = pais;
        this.cep = cep;
        this.endereco = endereco;
        this.numero = numero;
        this.bairro = bairro;
        this.complemento = complemento;
        this.estado = estado;
        this.cidade = cidade;
        this.telResidencial = telResidencial;
        this.telCel = telCel;
        this.celEmerg = celEmerg;
        this.is = is;
        this.notasMedicas = notasMedicas;
        this.alergiasReacoes = alergiasReacoes;
        this.medicamentos = medicamentos;
        this.contatoEmerg = contatoEmerg;
        this.sangue = sangue;
        this.peso = peso;
        this.doaOrgao = doaOrgao;
        this.problemasSaude = problemasSaude;
        this.log = log;

    }

    public String getEnconder() {
        return enconder;
    }

    public void setEnconder(String enconder) {
        this.enconder = enconder;
    }

    public InputStream getIs() {
        return is;
    }

    public void setIs(InputStream is) {
        this.is = is;
    }

    public Integer getId_funcionario() {
        return id_funcionario;
    }

    public void setId_funcionario(Integer id_funcionario) {
        this.id_funcionario = id_funcionario;
    }

    public String getAcesso() {
        return acesso;
    }

    public void setAcesso(String acesso) {
        this.acesso = acesso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEnvioEmails() {
        return envioEmails;
    }

    public void setEnvioEmails(String envioEmails) {
        this.envioEmails = envioEmails;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getAdmissao() {
        return admissao;
    }

    public void setAdmissao(String admissao) {
        this.admissao = admissao;
    }

    public String getQualificacao() {
        return qualificacao;
    }

    public void setQualificacao(String qualificacao) {
        this.qualificacao = qualificacao;
    }

    public String getCargoPrincipal() {
        return cargoPrincipal;
    }

    public void setCargoPrincipal(String cargoPrincipal) {
        this.cargoPrincipal = cargoPrincipal;
    }

    public String getCargoSecundario() {
        return cargoSecundario;
    }

    public void setCargoSecundario(String cargoSecundario) {
        this.cargoSecundario = cargoSecundario;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getProblemasSaude() {
        return problemasSaude;
    }

    public void setProblemasSaude(String problemasSaude) {
        this.problemasSaude = problemasSaude;
    }

    public String getNotasMedicas() {
        return notasMedicas;
    }

    public void setNotasMedicas(String notasMedicas) {
        this.notasMedicas = notasMedicas;
    }

    public String getAlergiasReacoes() {
        return alergiasReacoes;
    }

    public void setAlergiasReacoes(String alergiasReacoes) {
        this.alergiasReacoes = alergiasReacoes;
    }

    public String getMedicamentos() {
        return medicamentos;
    }

    public void setMedicamentos(String medicamentos) {
        this.medicamentos = medicamentos;
    }

    public String getContatoEmerg() {
        return contatoEmerg;
    }

    public void setContatoEmerg(String contatoEmerg) {
        this.contatoEmerg = contatoEmerg;
    }

    public String getSangue() {
        return sangue;
    }

    public void setSangue(String sangue) {
        this.sangue = sangue;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getDoaOrgao() {
        return doaOrgao;
    }

    public void setDoaOrgao(String doaOrgao) {
        this.doaOrgao = doaOrgao;
    }

    
    
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getDataExpiracao() {
        return dataExpiracao;
    }

    public void setDataExpiracao(String dataExpiracao) {
        this.dataExpiracao = dataExpiracao;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public String getEnviaAviso() {
        return enviaAviso;
    }

    public void setEnviaAviso(String enviaAviso) {
        this.enviaAviso = enviaAviso;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getCtps() {
        return ctps;
    }

    public void setCtps(String ctps) {
        this.ctps = ctps;
    }

    public String getPis() {
        return pis;
    }

    public void setPis(String pis) {
        this.pis = pis;
    }

    public String getPlanoSaude() {
        return planoSaude;
    }

    public void setPlanoSaude(String planoSaude) {
        this.planoSaude = planoSaude;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getTelResidencial() {
        return telResidencial;
    }

    public void setTelResidencial(String telResidencial) {
        this.telResidencial = telResidencial;
    }

    public String getTelCel() {
        return telCel;
    }

    public void setTelCel(String telCel) {
        this.telCel = telCel;
    }

    public String getCelEmerg() {
        return celEmerg;
    }

    public void setCelEmerg(String celEmerg) {
        this.celEmerg = celEmerg;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public void setnotasMedicas(String notasMedicas) {
        this.notasMedicas = notasMedicas;
    }

    public void setalergiasReacoes(String alergiasReacoes) {
        this.alergiasReacoes = alergiasReacoes;
    }

    public void setmedicamentos(String medicamentos) {
        this.medicamentos = medicamentos;
    }

    public void setcontatoEmerg(String contatoEmerg) {
        this.contatoEmerg = contatoEmerg;
    }

    public void setsangue(String sangue) {
        this.sangue = sangue;
    }

    public void setpeso(String peso) {
        this.peso = peso;
    }

    public void setdoaOrgao(String doaOrgao) {
        this.doaOrgao = doaOrgao;
    }

    public void setproblemasSaude(String problemasSaude) {
        this.problemasSaude = problemasSaude;
    }

    public String getproblemasSaude() {
        return problemasSaude;
    }

    public String getalergiasReacoes() {
        return alergiasReacoes;
    }

    public String getmedicamentos() {
        return medicamentos;
    }

    public String getnotasMedicas() {
        return notasMedicas;
    }

    public String getcontatoEmerg() {
        return contatoEmerg;
    }

    public String getsangue() {
        return sangue;
    }

    public String getpeso() {
        return peso;
    }

    public String getdoaOrgao() {
        return doaOrgao;
    }

    public String getLog() {
        return log;
    }

    public void setLog(String log) {
        this.log = log;
    }

    
    

}
