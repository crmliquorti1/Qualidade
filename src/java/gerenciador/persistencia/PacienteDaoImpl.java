/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciador.persistencia;

import gerenciador.entidades.Paciente;
import gerenciador.entidades.Pessoa;
import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author CR2 SISTEMAS
 */
public class PacienteDaoImpl implements PacienteDaoInterface, Serializable {

    private ConexaoInterface conexao;
    PreparedStatement cadastrar;
    PreparedStatement listarTodos;
    PreparedStatement excluirPaciente;

    public PacienteDaoImpl(ConexaoInterface conexao) throws DaoException, SQLException {
        this.conexao = conexao;
        String sql;

        try {
            sql = "INSERT INTO paciente (hospital, "
                    + "andar, "
                    + "quarto, "
                    + "leito, "
                    + "nomeAtendente, "
                    + "telefone, "
                    + "ramal, "
                    + "outrasInformacoes, "
                    + "raPaciente, "
                    + "nomePaciente, "
                    + "cpfPaciente,"
                    + "dataNasc, "
                    + "idade, "
                    + "horaEntradaPaciente, "
                    + "internadoDesde, "
                    + "cq, "
                    + "hd, "
                    + "outrasInformacoesPaciente, "
                    + "convenio, "
                    + "numeroCarteirinha, "
                    + "medicoSolicitante, "
                    + "prontuario, "
                    + "atendimento, "
                    + "senha, "
                    + "crm) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            cadastrar = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM paciente";
            listarTodos = conexao.getConnection().prepareStatement(sql);

            sql = "DELETE FROM paciente WHERE id_paciente=?";
            excluirPaciente = conexao.getConnection().prepareStatement(sql);

        } catch (DaoException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public boolean cadastrar(Paciente paciente) throws DaoException {

        boolean aux = false;

        try {
            cadastrar.setString(1, paciente.getHospital());
            cadastrar.setString(2, paciente.getAndar());
            cadastrar.setString(3, paciente.getQuarto());
            cadastrar.setString(4, paciente.getLeito());
            cadastrar.setString(5, paciente.getNomeAtendente());
            cadastrar.setString(6, paciente.getTelefone());
            cadastrar.setString(7, paciente.getRamal());
            cadastrar.setString(8, paciente.getOutrasIformacoes());
            cadastrar.setString(9, paciente.getRaPaciente());
            cadastrar.setString(10, paciente.getNomePaciente());
            cadastrar.setString(11, paciente.getCPFPaciente());
            cadastrar.setString(12, paciente.getDataNasc());
            cadastrar.setString(13, paciente.getIdade());
            cadastrar.setString(14, paciente.getHoraEntradaPaciente());
            cadastrar.setString(15, paciente.getInternadoDesde());
            cadastrar.setString(16, paciente.getCq());
            cadastrar.setString(17, paciente.getHd());
            cadastrar.setString(18, paciente.getOutrasInformacoesPaciente());
            cadastrar.setString(19, paciente.getConvenio());
            cadastrar.setString(20, paciente.getNumeroCarteirinha());
            cadastrar.setString(21, paciente.getMedicoSolicitante());
            cadastrar.setString(22, paciente.getProntuario());
            cadastrar.setString(23, paciente.getAtendimento());
            cadastrar.setString(24, paciente.getSenha());
            cadastrar.setString(25, paciente.getCrm());

            cadastrar.executeUpdate();
            aux = true;

        } catch (SQLException ex) {
            Logger.getLogger(PacienteDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return aux;

    }

    @Override
    public boolean excluirPaciente(int id_funcionario) throws DaoException {
        boolean aux = false;
        
        try {
            excluirPaciente.setInt(1, id_funcionario);
            excluirPaciente.executeUpdate();
            aux = true;
        } catch (SQLException ex) {
            Logger.getLogger(PacienteDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return aux;
    }

    @Override
    public Paciente buscarPaciente(int id_paciente) throws DaoException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editarPaciente(Paciente paciente) throws DaoException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Paciente> listarTodas() throws DaoException {

        List<Paciente> lista = new ArrayList<Paciente>();

        ResultSet result;
        try {
            result = listarTodos.executeQuery();

            while (result.next()) {

                Paciente paciente = new Paciente();
                paciente.setId_paciente(result.getInt("id_paciente"));
                paciente.setHospital(result.getString("hospital"));
                paciente.setAndar(result.getString("andar"));
                paciente.setLeito(result.getString("leito"));
                paciente.setNomeAtendente(result.getString("nomeAtendente"));
                paciente.setTelefone(result.getString("telefone"));
                paciente.setRamal(result.getString("ramal"));
                paciente.setOutrasIformacoes(result.getString("outrasInformacoes"));
                paciente.setRaPaciente(result.getString("raPaciente"));
                paciente.setNomePaciente(result.getString("nomePaciente"));
                paciente.setCPFPaciente(result.getString("cpfPaciente"));
                paciente.setDataNasc(result.getString("dataNasc"));
                paciente.setIdade(result.getString("idade"));
                paciente.setHoraEntradaPaciente(result.getString("horaEntradaPaciente"));
                paciente.setInternadoDesde(result.getString("internadoDesde"));
                paciente.setCq(result.getString("cq"));
                paciente.setHd(result.getString("hd"));
                paciente.setOutrasInformacoesPaciente(result.getString("outrasInformacoesPaciente"));
                paciente.setConvenio(result.getString("convenio"));
                paciente.setNumeroCarteirinha(result.getString("numeroCarteirinha"));
                paciente.setMedicoSolicitante(result.getString("medicoSolicitante"));
                paciente.setProntuario(result.getString("prontuario"));
                paciente.setAtendimento(result.getString("atendimento"));
                paciente.setSenha(result.getString("senha"));
                paciente.setCrm(result.getString("crm"));

                lista.add(paciente);

            }

        } catch (SQLException ex) {
            Logger.getLogger(PacienteDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lista;
    }

}
