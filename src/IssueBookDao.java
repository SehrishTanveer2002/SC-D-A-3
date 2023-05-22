/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Sehrish tanveer
 */
import java.sql.*;
public class IssueBookDao {
	
public static boolean checkBook(String bookid){
	boolean status=false;
	try{
		Connection con=DB.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from books where bookid=?");
		ps.setString(1,bookid);
	    ResultSet rs=ps.executeQuery();
		status=rs.next();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int save(String bookid,int studentid,String studentname,String studentcontact){
	int status=0;
	try{
		Connection con=DB.getConnection();
		
		status=updatebook(bookid);
		
		if(status>0){
		PreparedStatement ps=con.prepareStatement("insert into issuebooks(bookid,studentid,studentname,studentcontact) values(?,?,?,?)");
		ps.setString(1,bookid);
		ps.setInt(2,studentid);
		ps.setString(3,studentname);
		ps.setString(4,studentcontact);
		status=ps.executeUpdate();
		}
		
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int updatebook(String bookid){
	int status=0;
	int quantity=0,issued=0;
	try{
		Connection con=DB.getConnection();
		
		PreparedStatement ps=con.prepareStatement("select quantity,issued from books where bookid=?");
		ps.setString(1,bookid);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			quantity=rs.getInt("quantity");
			issued=rs.getInt("issued");
		}
		
		if(quantity>0){
		PreparedStatement ps2=con.prepareStatement("update books set quantity=?,issued=? where bookid=?");
		ps2.setInt(1,quantity-1);
		ps2.setInt(2,issued+1);
		ps2.setString(3,bookid);
		
		status=ps2.executeUpdate();
		}
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}
}