package assign1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class databaseConnection {

	 public static void main(String  rgs[])throws Exception
     {
        System.out.println("Hello World");
        
        System.out.println("Sucessfully");
     }
 
     private static Connection getConnection()throws ClassNotFoundException, SQLException
     {
    	 
  
        /*Class.forName( "COM.ibm.db2os390.sqlj.jdbc.DB2SQLJDriver" );*/
        Connection  connection =
                DriverManager.getConnection("jdbc:db2://localhost:50000/SAMPLE","db2admin","db2admin");
        System.out.println( "From DAO, connection obtained " );
        
        return connection;
     }
     public void insert() throws ClassNotFoundException, SQLException
     {
    	 Connection c;
    	 c=databaseConnection.getConnection();
    	 
     }
}
