package gerenciador.persistencia;


import java.sql.Connection;

public interface ConexaoInterface {
    Connection getConnection() throws DaoException;
}
