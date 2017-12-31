package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.PreparedStatement;

public class DAL {
	Connection conn;
	Statement stsm;
	PreparedStatement pstmt;
	private static final String DRIVER_JDBC = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL_DB = "jdbc:sqlserver://localhost:1433; instance=SQLEXPRESS; databaseName= WebThiTracNghiem; user=sa; password=123;";

	public DAL() {
		try {
			Class.forName(DRIVER_JDBC);
			conn = DriverManager.getConnection(URL_DB);
			stsm =conn.createStatement();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	

	
	public ResultSet getData(String sql) {
		stsm =null;
		try {
			stsm=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, 
				    ResultSet.CONCUR_READ_ONLY);/*ResultSet.TYPE_SCROLL_INSENSITIVE, 
				    ResultSet.CONCUR_READ_ONLY 		-> thay Ä‘á»•i Ä‘Æ°á»£c vÃ­ trÃ­ cá»§a con trá»� trong rs */
			return stsm.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static Connection connect() throws Exception{
		try {
			Class.forName(DRIVER_JDBC);
			Connection connect = DriverManager.getConnection(URL_DB);
			return connect;
		}
		catch(Exception e){
			e.getMessage();
		}
		return null;
	}
	
	public void thucThiSQL(String sql) throws Exception{
		Connection connect = connect();
		Statement stm = connect.createStatement();
		stm.executeUpdate(sql);
	}
	
	
	public boolean updatedata(String sql) {
		stsm = null;
		try {
			stsm=conn.createStatement();
			return stsm.executeUpdate(sql) > 0 ? true:false;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
