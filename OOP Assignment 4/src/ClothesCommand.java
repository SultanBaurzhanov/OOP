import java.sql.SQLException;

public class ClothesCommand implements Command {
    @Override
    public void execute() throws SQLException {
        Clothes.getClothes();
    }
}