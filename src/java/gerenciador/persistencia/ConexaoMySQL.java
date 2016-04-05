package gerenciador.persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoMySQL implements ConexaoInterface {

    private final String host;
    private final int porta;
    private final String nomeBase;
    private final String usuario;
    private final String senha;
    private Connection connection = null;

    public ConexaoMySQL(String host, int porta, String nomeBase, String usuario, String senha) {
        this.host = host;
        this.porta = porta;
        this.nomeBase = nomeBase;
        this.usuario = usuario;
        this.senha = senha;
    }

    @Override
    public Connection getConnection() throws DaoException {
        if (connection == null) {
            String url = "jdbc:mysql://" + host + ":" + porta + "/" + nomeBase;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(url, usuario , senha);
            } catch (ClassNotFoundException ex) {
                throw new DaoException();
            } catch (SQLException ex) {
//                throw new DaoException();
                ex.printStackTrace();
            }
        }
        return connection;
    }

}
