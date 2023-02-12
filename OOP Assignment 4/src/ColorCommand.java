import java.sql.SQLException;

public class ColorCommand implements Command {
    @Override
    public void execute() throws SQLException {
        Color.getColors();
    }
}