
package mycode;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dinith Malindu
 */
public class dbconnect {
    public static Connection connect()
    {
    Connection con=null;
   
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mynewdb","root","");
        } catch (Exception e) {
            System.out.println(e);
        }
    
    return con;
    }
    
    
}
