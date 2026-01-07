

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * JDBC java数据库链接
 */
public class JDBC1 {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        /*
            大致步骤:
            1:加载驱动
            2:通过DriverManager与数据库建立链接
            3:通过链接对象Connection创建语句对象Statement
            4:通过Statement对象执行SQL语句
            5:得到结果(如果执行的是DQL，则会得到查询结果集ResultSet)
            6:处理结果集
            7:关闭连接
         */
        //1:加载驱动
        //加载Mysql驱动
        Class.forName("com.mysql.cj.jdbc.Driver");
        //2:通过DriverManager与数据库建立链接
        Connection connection = DriverManager.getConnection(
                //                          /数据库名?....
                "jdbc:mysql://localhost:3307/tedu?characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai&rewriteBatchedStatements=true",
                "root",
                "root");
        System.out.println("与数据库链接成功!");

        //3:通过链接对象Connection创建语句对象Statement
        Statement statement = connection.createStatement();
        /*
            创建一张表:userinfo
            CREATE TABLE userinfo(
                id INT PRIMARY KEY AUTO_INCREMENT,
                username VARCHAR(30),
                password VARCHAR(30),
                nickname VARCHAR(30),
                age INT(3)
            )
         */
        String sql = "CREATE TABLE userinfo(" +
                     "  id INT PRIMARY KEY AUTO_INCREMENT," +
                     "  username VARCHAR(30)," +
                     "  password VARCHAR(30)," +
                     "  nickname VARCHAR(30)," +
                     "  age INT(3)" +
                     ")";
        //4:通过Statement对象执行SQL语句
        statement.execute(sql);
        System.out.println("创建表成功!");

        connection.close();
    }
}
