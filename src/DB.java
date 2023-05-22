/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Sehrish tanveer
 */
import java.sql.Connection;
import java.sql.DriverManager;
public class DB {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			 String user ="root";
            String password ="12345";
            String url ="jdbc:mysql://localhost:3306/library";
             con = DriverManager.getConnection(url,user,password);
		}catch(Exception e){System.out.println(e);}
		return con;
	}
}
