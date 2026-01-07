import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCDemo3 {
    public static void main(String[] args) {
        try(Connection connection = DBUtil.getConnection()){
            String sql = "SELECT id,name,salary,title " +
            "FROM teacher " + 
            "WHERE name = ? AND age < ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);//name is a variable here once it's connected to the database.
            preparedStatement.setInt(2, 30);
            ResultSet rs = preparedStatement.executeQuery();
            while(rs.next()){
                String name = rs.getString("name");
                System.out.println(name);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

