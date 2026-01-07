import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCDemo2 {
    public static void main(String[] args) {
        try(Connection connection = DBUtil.getConnection()){
            String sql = "SELECT id,name,salary,title " +
            "FROM teacher";
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int salary = rs.getInt("salary");
                String title = rs.getString("title");
                System.out.println(id+"--"+name+"--"+salary+"--"+title);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        
}
