import java.sql.SQLException;

public class IDsCommand implements Command {
    @Override
    public void execute() throws SQLException {
        IDs.getIDs();
    }
}