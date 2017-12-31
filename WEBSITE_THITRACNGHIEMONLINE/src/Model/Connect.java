package Model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Connect {
//	private static final String DRIVER_JDBC = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
//	private static final String URL_DB = "jdbc:sqlserver://localhost:1433; instance=SQLEXPRESS; databaseName= WebThiTracNghiem; user=sa; password=123;";
//
////    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
////    static final String DB_URL = "jdbc:mysql://localhost:3306/demoTest";
////    static String USER = "root";
////    static String PASS = "root";
//
//    public static Connection getConnection() {
//        try {
//            Class.forName(DRIVER_JDBC);
//            Connection conn = DriverManager.getConnection(URL_DB);
//            return conn;
//        } catch (Exception e) {
//            e.getMessage();
//        }
//        return null;
//    }
	private static final String DRIVER_JDBC = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL_DB = "jdbc:sqlserver://localhost:1433; instance=SQLEXPRESS; databaseName= WebThiTracNghiem; user=sa; password=123;";

	static Statement statement = null;

	public static Connection getDBConnectionSQLServer() {
		Connection conn = null;
		try {
			Class.forName(DRIVER_JDBC);
			conn = DriverManager.getConnection(URL_DB); 
			return conn;
		} catch (Exception e) {
			System.out.println("Error connection " + e);
		}
		
		return conn;
	}
	Statement stsm;
	public ResultSet getData(String sql) {
		stsm =null;
		try {
			stsm=getDBConnectionSQLServer().createStatement();
			return stsm.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static ResultSet ExecuteQueryResultSet(Connection conn, String str) {
		ResultSet rs = null;
		try {
			statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = statement.executeQuery(str);
		} catch (SQLException ex) {
			Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
		} 
		return rs;
	}

	public static boolean MyExcuteUpdateNonQuery(Connection conn, CallableStatement stmt) {
		boolean f = false;
		try {
			stmt.executeUpdate();
			f = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (conn != null || stmt != null) {
					conn.close();
				}
			} catch (SQLException se) {
			} // do nothing
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return f;
	}
	////
	String sql;

	public Connect() {
		super();
		this.sql =  "jdbc:sqlserver://localhost:1433; instance=SQLEXPRESS; databaseName=WebThiTracNghiem; user=sa; password=123;";
	}
	public Connection connect() throws Exception{
		try {
			Class.forName(DRIVER_JDBC);
			Connection connect = DriverManager.getConnection(URL_DB);
			return connect;
		} catch (Exception e) {
			e.getMessage();
		}
		return null;
	}
	
	public void thucThiCauLenhSQL(String sql) throws Exception{
		Connection connect = connect();
		Statement stmt = connect.createStatement();
		stmt.executeUpdate(sql);
	}
	public ResultSet chonDuLieuTuDTB(String sql) throws Exception{
		Connection connect = connect();
		Statement stmt = connect.createStatement();
		ResultSet rs =stmt.executeQuery(sql);
		return rs;
	}
	public static void main(String[] args) throws Exception {
		Connect connect = new Connect();
		System.out.println(connect.connect());
	}
}

