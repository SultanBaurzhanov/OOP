import java.util.Scanner;
import java.sql.*;
import java.sql.DriverManager;
import java.util.Map;
import java.util.HashMap;


public class Main {
    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "Orbitinion";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";

    private static final Map<Integer, Command> commandMap = new HashMap<>();
    static {
        commandMap.put(0, new TableListCommand());
        commandMap.put(1, new IDsCommand());
        commandMap.put(2, new ClothesCommand());
        commandMap.put(3, new ColorCommand());
        commandMap.put(4, new SizeCommand());
        commandMap.put(5, new TypeCommand());
    }

    public static void main(String[] args) throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        Scanner scanner = new Scanner(System.in);
        while (true) {
            List.getList();
            int command = scanner.nextInt();
            Command commandToExecute = commandMap.get(command);
            if (commandToExecute != null) {
                commandToExecute.execute();
            } else {
                System.err.println("Wrong input, ur blind");
            }
        }
    }
}
