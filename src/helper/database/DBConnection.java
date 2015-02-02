package helper.database;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by FALOOK on 12/23/2014.
 */
public class DBConnection {
    public static Connection getConnection() throws SQLException, NamingException {
        DataSource dataSource  = (DataSource) new InitialContext().lookup("jdbc/mysql");
        Connection conn = dataSource.getConnection();
        return conn;
    }
}
