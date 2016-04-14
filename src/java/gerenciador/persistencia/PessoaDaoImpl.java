package gerenciador.persistencia;

import com.mysql.jdbc.Blob;
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
 * @author Vinicius Nunes
 */
public class PessoaDaoImpl implements PessoaDaoInterface, Serializable {

    private ConexaoInterface conexao;
    PreparedStatement cadastrar;
    PreparedStatement verificaDuplicidade;
    PreparedStatement validar;
    PreparedStatement listaTodasAtivos;
    PreparedStatement listaTodasInativos;
    PreparedStatement excluirPessoa;
    PreparedStatement buscaPessoa;
    PreparedStatement atualizaPessoa;
    PreparedStatement atualizaPessoaSFoto;
    PreparedStatement getPhoto;
    PreparedStatement validaLogin;
    PreparedStatement validaAcesso;
    PreparedStatement buscaMatricula;
    PreparedStatement buscaFuncionario;

    public PessoaDaoImpl(ConexaoInterface conexao) {
        this.conexao = conexao;
        String sql;

        try {
            sql = "INSERT INTO funcionario (acesso, "
                    + "nome, "
                    + "email, "
                    + "envioEmails, "
                    + "matricula, "
                    + "admissao, "
                    + "qualificacao, "
                    + "cargoPrincipal, "
                    + "cargoSecundario, "
                    + "setor, "
                    + "turno,"
                    + "login, "
                    + "senha, "
                    + "dataExpiracao, "
                    + "situacao, "
                    + "enviaAviso, "
                    + "rg, "
                    + "cpf, "
                    + "dataNascimento, "
                    + "ctps, "
                    + "pis, "
                    + "planoSaude, "
                    + "pais, "
                    + "cep, "
                    + "endereco, "
                    + "numero, "
                    + "bairro, "
                    + "complemento, "
                    + "estado, "
                    + "cidade, "
                    + "telResidencial, "
                    + "telCel, "
                    + "celEmerg,"
                    + "foto,"
                    + "problemasSaude,"
                    + "notasMedicas,"
                    + "alergiasreacoes,"
                    + "medicamentos,"
                    + "contatoEmerg,"
                    + "grupoSanguineo,"
                    + "peso,"
                    + "doarorgaos,"
                    + "log) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            cadastrar = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE cpf=?";
            verificaDuplicidade = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE id_funcionario = ?";
            validar = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE situacao='Ativo' ORDER BY nome";
            listaTodasAtivos = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE situacao='Inativo' ORDER BY nome";
            listaTodasInativos = conexao.getConnection().prepareStatement(sql);

            sql = "UPDATE funcionario SET situacao='Inativo', log=? WHERE id_funcionario=?";
            excluirPessoa = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE id_funcionario = ?";
            buscaPessoa = conexao.getConnection().prepareStatement(sql);

            sql = "UPDATE funcionario SET "
                    + "acesso=?,"
                    + "nome=?,"
                    + "email=?,"
                    + "envioEmails=?,"
                    + "matricula=?,"
                    + "admissao=?,"
                    + "qualificacao=?,"
                    + "cargoPrincipal=?,"
                    + "cargoSecundario=?,"
                    + "setor=?,"
                    + "turno=?,"
                    + "login=?,"
                    + "senha=?,"
                    + "dataExpiracao=?,"
                    + "situacao=?,"
                    + "enviaAviso=?,"
                    + "rg=?,"
                    + "cpf=?,"
                    + "dataNascimento=?,"
                    + "ctps=?,"
                    + "pis=?,"
                    + "planoSaude=?,"
                    + "pais=?,"
                    + "cep=?,"
                    + "endereco=?,"
                    + "numero=?,"
                    + "bairro=?,"
                    + "complemento=?,"
                    + "estado=?,"
                    + "cidade=?,"
                    + "telResidencial=?,"
                    + "telCel=?,"
                    + "celEmerg=?,"
                    + "foto=?,"
                    + "problemasSaude=?,"
                    + "notasMedicas=?,"
                    + "alergiasreacoes=?,"
                    + "medicamentos=?,"
                    + "contatoEmerg=?,"
                    + "grupoSanguineo=?,"
                    + "peso=?,"
                    + "doarorgaos=?,"
                    + "log=?"
                    + "WHERE id_funcionario=?";
            atualizaPessoa = conexao.getConnection().prepareStatement(sql);

            sql = "UPDATE funcionario SET "
                    + "acesso=?,"
                    + "nome=?,"
                    + "email=?,"
                    + "envioEmails=?,"
                    + "matricula=?,"
                    + "admissao=?,"
                    + "qualificacao=?,"
                    + "cargoPrincipal=?,"
                    + "cargoSecundario=?,"
                    + "setor=?,"
                    + "turno=?,"
                    + "login=?,"
                    + "senha=?,"
                    + "dataExpiracao=?,"
                    + "situacao=?,"
                    + "enviaAviso=?,"
                    + "rg=?,"
                    + "cpf=?,"
                    + "dataNascimento=?,"
                    + "ctps=?,"
                    + "pis=?,"
                    + "planoSaude=?,"
                    + "pais=?,"
                    + "cep=?,"
                    + "endereco=?,"
                    + "numero=?,"
                    + "bairro=?,"
                    + "complemento=?,"
                    + "estado=?,"
                    + "cidade=?,"
                    + "telResidencial=?,"
                    + "telCel=?,"
                    + "celEmerg=?,"
                    + "problemasSaude=?,"
                    + "notasMedicas=?,"
                    + "alergiasreacoes=?,"
                    + "medicamentos=?,"
                    + "contatoEmerg=?,"
                    + "grupoSanguineo=?,"
                    + "peso=?,"
                    + "doarorgaos=?,"
                    + "log=?"
                    + "WHERE id_funcionario=?";
            atualizaPessoaSFoto = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE id_funcionario = ?";
            getPhoto = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE login = ?";
            validaLogin = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE login = ? AND senha=?";
            validaAcesso = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE cpf = ?";
            buscaMatricula = conexao.getConnection().prepareStatement(sql);

            sql = "SELECT * FROM funcionario WHERE nome like ? AND id_funcionario <> 25";
            buscaFuncionario = conexao.getConnection().prepareStatement(sql);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean cadastrar(Pessoa pessoa) throws DaoException {

        boolean aux = false;

        try {
            cadastrar.setString(1, pessoa.getAcesso());
            cadastrar.setString(2, pessoa.getNome());
            cadastrar.setString(3, pessoa.getEmail());
            cadastrar.setString(4, pessoa.getEnvioEmails());
            cadastrar.setString(5, pessoa.getMatricula());
            cadastrar.setString(6, pessoa.getAdmissao());

            //            cadastrar.setDate(6, (Date) pessoa.getAdmissao());
            cadastrar.setString(7, pessoa.getQualificacao());
            cadastrar.setString(8, pessoa.getCargoPrincipal());
            cadastrar.setString(9, pessoa.getCargoSecundario());
            cadastrar.setString(10, pessoa.getSetor());
            cadastrar.setString(11, pessoa.getTurno());

            String auxiliar = validaLogin(pessoa.getLogin());

            cadastrar.setString(12, auxiliar);

            cadastrar.setString(13, pessoa.getSenha());
            cadastrar.setString(14, pessoa.getDataExpiracao()); // Em Dias
            cadastrar.setString(15, pessoa.getSituacao());
            cadastrar.setString(16, pessoa.getEnviaAviso());
            cadastrar.setString(17, pessoa.getRg());
            cadastrar.setString(18, pessoa.getCpf());
            cadastrar.setString(19, pessoa.getDataNascimento());
            cadastrar.setString(20, pessoa.getCtps());
            cadastrar.setString(21, pessoa.getPis());
            cadastrar.setString(22, pessoa.getPlanoSaude());
            cadastrar.setString(23, pessoa.getPais());
            cadastrar.setString(24, pessoa.getCep());
            cadastrar.setString(25, pessoa.getEndereco());
            cadastrar.setString(26, pessoa.getNumero());
            cadastrar.setString(27, pessoa.getBairro());
            cadastrar.setString(28, pessoa.getComplemento());
            cadastrar.setString(29, pessoa.getEstado());
            cadastrar.setString(30, pessoa.getCidade());
            cadastrar.setString(31, pessoa.getTelResidencial());
            cadastrar.setString(32, pessoa.getTelCel());
            cadastrar.setString(33, pessoa.getCelEmerg());
            cadastrar.setBinaryStream(34, pessoa.getIs());
            cadastrar.setString(35, pessoa.getproblemasSaude());
            cadastrar.setString(36, pessoa.getnotasMedicas());
            cadastrar.setString(37, pessoa.getalergiasReacoes());
            cadastrar.setString(38, pessoa.getmedicamentos());
            cadastrar.setString(39, pessoa.getcontatoEmerg());
            cadastrar.setString(40, pessoa.getsangue());
            cadastrar.setString(41, pessoa.getpeso());
            cadastrar.setString(42, pessoa.getdoaOrgao());
            cadastrar.setString(43, pessoa.getLog());

            cadastrar.execute();

            aux = true;

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();

        }
        return aux;
    }

    @Override
    public boolean verificaDuplicidade(String cpf) throws DaoException {

        try {
            verificaDuplicidade.setString(1, cpf);

            ResultSet result = verificaDuplicidade.executeQuery();

            if (result.next()) {
                return false;
                //Retorna falso se existe uma instância com tais dados
            }

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }

        return true;

    }

    public List<Pessoa> listarTodasAtivos() throws DaoException {

        List<Pessoa> lista = new ArrayList<Pessoa>();
        Blob image;
        byte[] imgData = null;
        try {
            ResultSet result = listaTodasAtivos.executeQuery();

            while (result.next()) {

                Pessoa pessoa = new Pessoa();
                pessoa.setId_funcionario(result.getInt("id_funcionario"));
                pessoa.setAcesso(result.getString("acesso"));
                pessoa.setNome(result.getString("nome"));
                pessoa.setEmail(result.getString("email"));
                pessoa.setEnvioEmails(result.getString("envioEmails"));
                pessoa.setMatricula(result.getString("matricula"));
                pessoa.setAdmissao(result.getString("admissao"));
                pessoa.setQualificacao(result.getString("qualificacao"));
//                Cargo cargo = new Cargo();
//                cargo.setId_cargo(result.getLong("cargoPrincipal"));
                pessoa.setCargoPrincipal(result.getString("cargoPrincipal"));
                pessoa.setCargoSecundario(result.getString("cargoSecundario"));
                pessoa.setSetor(result.getString("setor"));
                pessoa.setTurno(result.getString("turno"));
                pessoa.setLogin(result.getString("login"));
                pessoa.setSenha(result.getString("senha"));
                pessoa.setDataExpiracao(result.getString("dataExpiracao"));
                pessoa.setSituacao(result.getString("situacao"));
                pessoa.setEnviaAviso(result.getString("enviaAviso"));
                pessoa.setRg(result.getString("rg"));
                pessoa.setCpf(result.getString("cpf"));
                pessoa.setDataNascimento(result.getString("dataNascimento"));
                pessoa.setCtps(result.getString("ctps"));
                pessoa.setPis(result.getString("pis"));
                pessoa.setPlanoSaude(result.getString("planoSaude"));
                pessoa.setPais(result.getString("pais"));
                pessoa.setCep(result.getString("cep"));
                pessoa.setEndereco(result.getString("endereco"));
                pessoa.setNumero(result.getString("numero"));
                pessoa.setBairro(result.getString("bairro"));
                pessoa.setComplemento(result.getString("complemento"));
                pessoa.setEstado(result.getString("estado"));
                pessoa.setCidade(result.getString("cidade"));
                pessoa.setTelResidencial(result.getString("telResidencial"));
                pessoa.setTelCel(result.getString("telCel"));
                pessoa.setCelEmerg(result.getString("celEmerg"));

                image = (Blob) result.getBlob("foto");

                if (image != null) {
                    imgData = image.getBytes(1, (int) image.length());

                    pessoa.setFoto(imgData);
                    String s = new sun.misc.BASE64Encoder().encode(imgData);
                    pessoa.setEnconder(s);
                }

                pessoa.setproblemasSaude(result.getString("problemasSaude"));
                pessoa.setnotasMedicas(result.getString("notasMedicas"));
                pessoa.setalergiasReacoes(result.getString("alergiasreacoes"));
                pessoa.setmedicamentos(result.getString("medicamentos"));
                pessoa.setcontatoEmerg(result.getString("contatoEmerg"));
                pessoa.setsangue(result.getString("grupoSanguineo"));
                pessoa.setpeso(result.getString("peso"));
                pessoa.setdoaOrgao(result.getString("doarorgaos"));
                pessoa.setLog(result.getString("log"));

                lista.add(pessoa);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return lista;
    }

    public List<Pessoa> listarTodasInativos() throws DaoException {

        List<Pessoa> lista = new ArrayList<Pessoa>();
        Blob image;
        byte[] imgData = null;
        try {
            ResultSet result = listaTodasInativos.executeQuery();

            while (result.next()) {

                Pessoa pessoa = new Pessoa();
                pessoa.setId_funcionario(result.getInt("id_funcionario"));
                pessoa.setAcesso(result.getString("acesso"));
                pessoa.setNome(result.getString("nome"));
                pessoa.setEmail(result.getString("email"));
                pessoa.setEnvioEmails(result.getString("envioEmails"));
                pessoa.setMatricula(result.getString("matricula"));
                pessoa.setAdmissao(result.getString("admissao"));
                pessoa.setQualificacao(result.getString("qualificacao"));
//                Cargo cargo = new Cargo();
//                cargo.setId_cargo(result.getLong("cargoPrincipal"));
                pessoa.setCargoPrincipal(result.getString("cargoPrincipal"));
                pessoa.setCargoSecundario(result.getString("cargoSecundario"));
                pessoa.setSetor(result.getString("setor"));
                pessoa.setTurno(result.getString("turno"));
                pessoa.setLogin(result.getString("login"));
                pessoa.setSenha(result.getString("senha"));
                pessoa.setDataExpiracao(result.getString("dataExpiracao"));
                pessoa.setSituacao(result.getString("situacao"));
                pessoa.setEnviaAviso(result.getString("enviaAviso"));
                pessoa.setRg(result.getString("rg"));
                pessoa.setCpf(result.getString("cpf"));
                pessoa.setDataNascimento(result.getString("dataNascimento"));
                pessoa.setCtps(result.getString("ctps"));
                pessoa.setPis(result.getString("pis"));
                pessoa.setPlanoSaude(result.getString("planoSaude"));
                pessoa.setPais(result.getString("pais"));
                pessoa.setCep(result.getString("cep"));
                pessoa.setEndereco(result.getString("endereco"));
                pessoa.setNumero(result.getString("numero"));
                pessoa.setBairro(result.getString("bairro"));
                pessoa.setComplemento(result.getString("complemento"));
                pessoa.setEstado(result.getString("estado"));
                pessoa.setCidade(result.getString("cidade"));
                pessoa.setTelResidencial(result.getString("telResidencial"));
                pessoa.setTelCel(result.getString("telCel"));
                pessoa.setCelEmerg(result.getString("celEmerg"));

                image = (Blob) result.getBlob("foto");

                if (image != null) {
                    imgData = image.getBytes(1, (int) image.length());

                    pessoa.setFoto(imgData);
                    String s = new sun.misc.BASE64Encoder().encode(imgData);
                    pessoa.setEnconder(s);
                }

                pessoa.setproblemasSaude(result.getString("problemasSaude"));
                pessoa.setnotasMedicas(result.getString("notasMedicas"));
                pessoa.setalergiasReacoes(result.getString("alergiasreacoes"));
                pessoa.setmedicamentos(result.getString("medicamentos"));
                pessoa.setcontatoEmerg(result.getString("contatoEmerg"));
                pessoa.setsangue(result.getString("grupoSanguineo"));
                pessoa.setpeso(result.getString("peso"));
                pessoa.setdoaOrgao(result.getString("doarorgaos"));
                pessoa.setLog(result.getString("log"));

                lista.add(pessoa);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return lista;
    }

    public boolean excluirPessoa(int id_funcionario, String log) throws DaoException {

        boolean aux = false;
        try {
            excluirPessoa.setString(1, log);
            excluirPessoa.setInt(2, id_funcionario);
            excluirPessoa.executeUpdate();
            aux = true;

        } catch (SQLException ex) {

            ex.printStackTrace();

        }

        return aux;

    }

    @Override
    public Pessoa buscarPessoa(int id_funcionario) throws DaoException {
        Pessoa pessoa = new Pessoa();
        Blob image;
        byte[] imgData = null;

        try {
            buscaPessoa.setInt(1, id_funcionario);
            ResultSet result = buscaPessoa.executeQuery();

            while (result.next()) {
                pessoa.setId_funcionario(result.getInt("id_funcionario"));
                pessoa.setAcesso(result.getString("acesso"));
                pessoa.setNome(result.getString("nome"));
                pessoa.setEmail(result.getString("email"));
                pessoa.setEnvioEmails(result.getString("envioEmails"));
                pessoa.setMatricula(result.getString("matricula"));
                pessoa.setAdmissao(result.getString("admissao"));
                pessoa.setQualificacao(result.getString("qualificacao"));
                pessoa.setCargoPrincipal(result.getString("cargoPrincipal"));
                pessoa.setCargoSecundario(result.getString("cargoSecundario"));
                pessoa.setSetor(result.getString("setor"));
                pessoa.setTurno(result.getString("turno"));
                pessoa.setLogin(result.getString("login"));
                pessoa.setSenha(result.getString("senha"));
                pessoa.setDataExpiracao(result.getString("dataExpiracao"));
                pessoa.setSituacao(result.getString("situacao"));
                pessoa.setEnviaAviso(result.getString("enviaAviso"));
                pessoa.setRg(result.getString("rg"));
                pessoa.setCpf(result.getString("cpf"));
                pessoa.setDataNascimento(result.getString("dataNascimento"));
                pessoa.setCtps(result.getString("ctps"));
                pessoa.setPis(result.getString("pis"));
                pessoa.setPlanoSaude(result.getString("planoSaude"));
                pessoa.setPais(result.getString("pais"));
                pessoa.setCep(result.getString("cep"));
                pessoa.setEndereco(result.getString("endereco"));
                pessoa.setNumero(result.getString("numero"));
                pessoa.setBairro(result.getString("bairro"));
                pessoa.setComplemento(result.getString("complemento"));
                pessoa.setEstado(result.getString("estado"));
                pessoa.setCidade(result.getString("cidade"));
                pessoa.setTelResidencial(result.getString("telResidencial"));
                pessoa.setTelCel(result.getString("telCel"));
                pessoa.setCelEmerg(result.getString("celEmerg"));

                image = (Blob) result.getBlob("foto");

                if (image != null) {

                    imgData = image.getBytes(1, (int) image.length());

                    pessoa.setFoto(imgData);
                    String s = new sun.misc.BASE64Encoder().encode(imgData);
                    pessoa.setEnconder(s);

                }

                pessoa.setproblemasSaude(result.getString("problemasSaude"));
                pessoa.setnotasMedicas(result.getString("notasMedicas"));
                pessoa.setalergiasReacoes(result.getString("alergiasreacoes"));
                pessoa.setmedicamentos(result.getString("medicamentos"));
                pessoa.setcontatoEmerg(result.getString("contatoEmerg"));
                pessoa.setsangue(result.getString("grupoSanguineo"));
                pessoa.setpeso(result.getString("peso"));
                pessoa.setdoaOrgao(result.getString("doarorgaos"));
                pessoa.setLog(result.getString("log"));
            }

        } catch (SQLException ex) {

            ex.printStackTrace();

        }

        return pessoa;
    }

    public boolean editarPessoa(Pessoa pessoa) throws DaoException {

        try {
            atualizaPessoa.setString(1, pessoa.getAcesso());
            atualizaPessoa.setString(2, pessoa.getNome());
            atualizaPessoa.setString(3, pessoa.getEmail());
            atualizaPessoa.setString(4, pessoa.getEnvioEmails());
            atualizaPessoa.setString(5, pessoa.getMatricula());
            atualizaPessoa.setString(6, pessoa.getAdmissao());
            atualizaPessoa.setString(7, pessoa.getQualificacao());
            atualizaPessoa.setString(8, pessoa.getCargoPrincipal());
            atualizaPessoa.setString(9, pessoa.getCargoSecundario());
            atualizaPessoa.setString(10, pessoa.getSetor());
            atualizaPessoa.setString(11, pessoa.getTurno());
            atualizaPessoa.setString(12, pessoa.getLogin());
            atualizaPessoa.setString(13, pessoa.getSenha());
            atualizaPessoa.setString(14, pessoa.getDataExpiracao()); // Em Dias
            atualizaPessoa.setString(15, pessoa.getSituacao());
            atualizaPessoa.setString(16, pessoa.getEnviaAviso());
            atualizaPessoa.setString(17, pessoa.getRg());
            atualizaPessoa.setString(18, pessoa.getCpf());
            atualizaPessoa.setString(19, pessoa.getDataNascimento());
            atualizaPessoa.setString(20, pessoa.getCtps());
            atualizaPessoa.setString(21, pessoa.getPis());
            atualizaPessoa.setString(22, pessoa.getPlanoSaude());
            atualizaPessoa.setString(23, pessoa.getPais());
            atualizaPessoa.setString(24, pessoa.getCep());
            atualizaPessoa.setString(25, pessoa.getEndereco());
            atualizaPessoa.setString(26, pessoa.getNumero());
            atualizaPessoa.setString(27, pessoa.getBairro());
            atualizaPessoa.setString(28, pessoa.getComplemento());
            atualizaPessoa.setString(29, pessoa.getEstado());
            atualizaPessoa.setString(30, pessoa.getCidade());
            atualizaPessoa.setString(31, pessoa.getTelResidencial());
            atualizaPessoa.setString(32, pessoa.getTelCel());
            atualizaPessoa.setString(33, pessoa.getCelEmerg());
            atualizaPessoa.setBinaryStream(34, pessoa.getIs());
            atualizaPessoa.setString(35, pessoa.getproblemasSaude());
            atualizaPessoa.setString(36, pessoa.getnotasMedicas());
            atualizaPessoa.setString(37, pessoa.getalergiasReacoes());
            atualizaPessoa.setString(38, pessoa.getmedicamentos());
            atualizaPessoa.setString(39, pessoa.getcontatoEmerg());
            atualizaPessoa.setString(40, pessoa.getsangue());
            atualizaPessoa.setString(41, pessoa.getpeso());
            atualizaPessoa.setString(42, pessoa.getdoaOrgao());
            atualizaPessoa.setString(43, pessoa.getLog());
            atualizaPessoa.setInt(44, Integer.parseInt(pessoa.getMatricula()));

            atualizaPessoa.execute();

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }

        return true;
    }

    @Override
    public boolean editarPessoaSFoto(Pessoa pessoa) throws DaoException {

        try {
            atualizaPessoaSFoto.setString(1, pessoa.getAcesso());
            atualizaPessoaSFoto.setString(2, pessoa.getNome());
            atualizaPessoaSFoto.setString(3, pessoa.getEmail());
            atualizaPessoaSFoto.setString(4, pessoa.getEnvioEmails());
            atualizaPessoaSFoto.setString(5, pessoa.getMatricula());
            atualizaPessoaSFoto.setString(6, pessoa.getAdmissao());
            atualizaPessoaSFoto.setString(7, pessoa.getQualificacao());
            atualizaPessoaSFoto.setString(8, pessoa.getCargoPrincipal());
            atualizaPessoaSFoto.setString(9, pessoa.getCargoSecundario());
            atualizaPessoaSFoto.setString(10, pessoa.getSetor());
            atualizaPessoaSFoto.setString(11, pessoa.getTurno());
            atualizaPessoaSFoto.setString(12, pessoa.getLogin());
            atualizaPessoaSFoto.setString(13, pessoa.getSenha());
            atualizaPessoaSFoto.setString(14, pessoa.getDataExpiracao()); // Em Dias
            atualizaPessoaSFoto.setString(15, pessoa.getSituacao());
            atualizaPessoaSFoto.setString(16, pessoa.getEnviaAviso());
            atualizaPessoaSFoto.setString(17, pessoa.getRg());
            atualizaPessoaSFoto.setString(18, pessoa.getCpf());
            atualizaPessoaSFoto.setString(19, pessoa.getDataNascimento());
            atualizaPessoaSFoto.setString(20, pessoa.getCtps());
            atualizaPessoaSFoto.setString(21, pessoa.getPis());
            atualizaPessoaSFoto.setString(22, pessoa.getPlanoSaude());
            atualizaPessoaSFoto.setString(23, pessoa.getPais());
            atualizaPessoaSFoto.setString(24, pessoa.getCep());
            atualizaPessoaSFoto.setString(25, pessoa.getEndereco());
            atualizaPessoaSFoto.setString(26, pessoa.getNumero());
            atualizaPessoaSFoto.setString(27, pessoa.getBairro());
            atualizaPessoaSFoto.setString(28, pessoa.getComplemento());
            atualizaPessoaSFoto.setString(29, pessoa.getEstado());
            atualizaPessoaSFoto.setString(30, pessoa.getCidade());
            atualizaPessoaSFoto.setString(31, pessoa.getTelResidencial());
            atualizaPessoaSFoto.setString(32, pessoa.getTelCel());
            atualizaPessoaSFoto.setString(33, pessoa.getCelEmerg());

            atualizaPessoaSFoto.setString(34, pessoa.getproblemasSaude());
            atualizaPessoaSFoto.setString(35, pessoa.getnotasMedicas());
            atualizaPessoaSFoto.setString(36, pessoa.getalergiasReacoes());
            atualizaPessoaSFoto.setString(37, pessoa.getmedicamentos());
            atualizaPessoaSFoto.setString(38, pessoa.getcontatoEmerg());
            atualizaPessoaSFoto.setString(39, pessoa.getsangue());
            atualizaPessoaSFoto.setString(40, pessoa.getpeso());
            atualizaPessoaSFoto.setString(41, pessoa.getdoaOrgao());
            atualizaPessoaSFoto.setString(42, pessoa.getLog());
            atualizaPessoaSFoto.setInt(43, Integer.parseInt(pessoa.getMatricula()));

            atualizaPessoaSFoto.execute();

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }

        return true;
    }

    public String validaLogin(String login) {

        try {
            validaLogin.setString(1, login);

            ResultSet result = validaLogin.executeQuery();

            if (result.next()) {

                for (int i = 1;; i++) {

                    String aux = login + i;
                    validaLogin.setString(1, aux);

                    ResultSet resultado = validaLogin.executeQuery();

                    if (!resultado.next()) {

                        return aux;

                    }

                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }

        return login;

    }

    public Pessoa validaAcesso(String login, String senha) throws DaoException {

        try {
            validaAcesso.setString(1, login);
            validaAcesso.setString(2, senha);

            ResultSet result = validaAcesso.executeQuery();

            if (result.next()) {
                int aux = result.getInt("id_funcionario");
                Pessoa pessoa = buscarPessoa(aux);
                return pessoa;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return null;
    }

    @Override
    public int buscaMatricula(String cpf) throws DaoException {

        try {
            buscaMatricula.setString(1, cpf);

            ResultSet result = buscaMatricula.executeQuery();

            while (result.next()) {
                return result.getInt("id_funcionario");
            }

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    @Override
    public List<Pessoa> buscaPeloNome(String nome) throws DaoException {
        List<Pessoa> lista = new ArrayList<Pessoa>();
        Blob image;
        byte[] imgData = null;

        try {
            buscaFuncionario.setString(1,"%" + nome + "%");

            ResultSet result = buscaFuncionario.executeQuery();

            while (result.next()) {
                Pessoa pessoa = new Pessoa();
                pessoa.setId_funcionario(result.getInt("id_funcionario"));
                pessoa.setAcesso(result.getString("acesso"));
                pessoa.setNome(result.getString("nome"));
                pessoa.setEmail(result.getString("email"));
                pessoa.setEnvioEmails(result.getString("envioEmails"));
                pessoa.setMatricula(result.getString("matricula"));
                pessoa.setAdmissao(result.getString("admissao"));
                pessoa.setQualificacao(result.getString("qualificacao"));
//                Cargo cargo = new Cargo();
//                cargo.setId_cargo(result.getLong("cargoPrincipal"));
                pessoa.setCargoPrincipal(result.getString("cargoPrincipal"));
                pessoa.setCargoSecundario(result.getString("cargoSecundario"));
                pessoa.setSetor(result.getString("setor"));
                pessoa.setTurno(result.getString("turno"));
                pessoa.setLogin(result.getString("login"));
                pessoa.setSenha(result.getString("senha"));
                pessoa.setDataExpiracao(result.getString("dataExpiracao"));
                pessoa.setSituacao(result.getString("situacao"));
                pessoa.setEnviaAviso(result.getString("enviaAviso"));
                pessoa.setRg(result.getString("rg"));
                pessoa.setCpf(result.getString("cpf"));
                pessoa.setDataNascimento(result.getString("dataNascimento"));
                pessoa.setCtps(result.getString("ctps"));
                pessoa.setPis(result.getString("pis"));
                pessoa.setPlanoSaude(result.getString("planoSaude"));
                pessoa.setPais(result.getString("pais"));
                pessoa.setCep(result.getString("cep"));
                pessoa.setEndereco(result.getString("endereco"));
                pessoa.setNumero(result.getString("numero"));
                pessoa.setBairro(result.getString("bairro"));
                pessoa.setComplemento(result.getString("complemento"));
                pessoa.setEstado(result.getString("estado"));
                pessoa.setCidade(result.getString("cidade"));
                pessoa.setTelResidencial(result.getString("telResidencial"));
                pessoa.setTelCel(result.getString("telCel"));
                pessoa.setCelEmerg(result.getString("celEmerg"));

                image = (Blob) result.getBlob("foto");

                if (image != null) {
                    imgData = image.getBytes(1, (int) image.length());

                    pessoa.setFoto(imgData);
                    String s = new sun.misc.BASE64Encoder().encode(imgData);
                    pessoa.setEnconder(s);
                }

                pessoa.setproblemasSaude(result.getString("problemasSaude"));
                pessoa.setnotasMedicas(result.getString("notasMedicas"));
                pessoa.setalergiasReacoes(result.getString("alergiasreacoes"));
                pessoa.setmedicamentos(result.getString("medicamentos"));
                pessoa.setcontatoEmerg(result.getString("contatoEmerg"));
                pessoa.setsangue(result.getString("grupoSanguineo"));
                pessoa.setpeso(result.getString("peso"));
                pessoa.setdoaOrgao(result.getString("doarorgaos"));
                pessoa.setLog(result.getString("log"));

                lista.add(pessoa);
            }

        } catch (SQLException ex) {
            Logger.getLogger(PessoaDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
}
