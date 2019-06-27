package account;
import java.sql.*;
public class Connectionis {
	  public Connection connect() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
    	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankweb","root","!Pass81is0");
    	  return con;
		}
    }

