import java.sql.SQLException;

public class SizeCommand implements Command {
    @Override
    public void execute() throws SQLException {
        Size.getSize();
    }
}