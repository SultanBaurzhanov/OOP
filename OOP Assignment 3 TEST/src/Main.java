import java.util.Scanner;
import java.sql.*;
import java.sql.DriverManager;


public class Main {

    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "Orbitinion";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";

    public static void main(String[] args) throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.println("0 - Show full table");
            System.out.println("1 - Show sorted out ID's");
            System.out.println("2 - Show sorted out Clothes And Misc section");
            System.out.println("3 - Show sorted out Color section");
            System.out.println("4 - Show sorted out Size section");
            System.out.println("5 - Show sorted out Type Of Clothes section");
            // System.out.println("6 - Your specific request");
            int command = scanner.nextInt();
            if (command == 0) {
                //обьект отправляет запросы в БД
                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle";
                //обьект хранит резултат выполнения запроса
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println(result.getString("Clothes_And_Misc") + " | " + result.getString("Color") + " | " + result.getString("Size") + " | " + result.getString("Type_Of_Clothes") + ("\n"));
                }

            } else if (command == 1) {
                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle";
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println(result.getString("ID") + ("\n"));
                }
            } else if (command == 2) {
                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle";
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println(result.getString("Clothes_And_Misc") + ("\n"));
                }
            } else if (command == 3) {
                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle";
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println(result.getString("Color") + ("\n"));
                }
            } else if (command == 4) {
                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle";
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println(result.getString("Size") + ("\n"));
                }
            } else if (command == 5) {
                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle";
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println(result.getString("Type_Of_Clothes") + ("\n"));
                }
            } /* else if (command == 6) {
                System.out.println("Type in Clothes_And_Misc / Color / Size / Type_Of_Clothes section you need");
                String lineScanner1 = scanner.nextLine();
                System.out.println("Then type in what you need (ex:Turtleneck)");
                String lineScanner2 = scanner.nextLine();

                Statement statement = connection.createStatement();
                String SQL_SELECT_TASKS = "select * from Aisle where ";
                ResultSet result = statement.executeQuery(SQL_SELECT_TASKS);

                while (result.next()) {
                    System.out.println("test" + ("\n"));
                } */
            }
        }
    }
