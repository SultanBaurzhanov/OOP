import java.sql.SQLException;

public class TypeCommand implements Command {
    @Override
    public void execute() throws SQLException {
        Type.getType();
    }
}
