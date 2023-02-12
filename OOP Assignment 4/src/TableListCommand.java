import java.sql.SQLException;

public class TableListCommand implements Command {
    @Override
    public void execute() throws SQLException {
        TableList.getTableList();
    }
}