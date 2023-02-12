import java.sql.*;

public class TableList {
    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "Orbitinion";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    public static void getTableList()  throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        //обьект отправляет запросы в БД
        Statement statement = connection.createStatement();
        String SQL_SELECT_TASKS = "select * from Aisle";
        //обьект хранит резултат выполнения запроса
        ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

        while (result.next()) {
            System.out.println(result.getString("ID") + " | " + result.getString("Clothes_And_Misc") + " | " + result.getString("Color") + " | " + result.getString("Size") + " | " + result.getString("Type_Of_Clothes") + ("\n"));
        }
    }
}
