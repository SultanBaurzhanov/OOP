import java.sql.*;

public class Size {
    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "Orbitinion";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    public static void getSize()  throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        //обьект отправляет запросы в БД
        Statement statement = connection.createStatement();
        String SQL_SELECT_TASKS = "select distinct Size from Aisle order by Size asc";
        //обьект хранит резултат выполнения запроса
        ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

        while (result.next()) {
            System.out.println(result.getString("Size") + ("\n"));
        }
    }
}