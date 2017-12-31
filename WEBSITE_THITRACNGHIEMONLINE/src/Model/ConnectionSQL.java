package Model;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ConnectionSQL {
	// káº¿t ná»‘i vÃ o SQL Server
		// (Sá»­ dá»¥ng thÆ° viá»‡n SQLJDBC)
		// Driver and URL
		private static final String DRIVER_JDBC = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		private static final String URL_DB = "jdbc:sqlserver://localhost;databaseName=WebThiTracNghiem;integratedSecurity=true";

		static Statement statement = null;

		public static Connection getDBConnectionSQLServer() {
			Connection conn = null;
			try {
				Class.forName(DRIVER_JDBC);
				conn = DriverManager.getConnection(URL_DB); // Káº¿t ná»‘i SQLServer
				System.out.println("Connected successfully ...");
				return conn;
			} catch (Exception e) {
				System.out.println("Error connection " + e);
			}
			
			return conn;
		}

		// hÃ m tráº£ danh sÃ¡ch lÆ°u trong ResultSet thÃ´ng qua cÃ¢u truy váº¥n str
		public static ResultSet ExecuteQueryResultSet(Connection conn, String str) {
			ResultSet rs = null;
			try {
				statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				rs = statement.executeQuery(str);
			} catch (SQLException ex) {
				Logger.getLogger(ConnectionSQL.class.getName()).log(Level.SEVERE, null, ex);
			} 
			return rs;
		}

		// HÃ m thá»±c hiá»‡n lá»‡nh tráº£ vá»� true hoáº·c false
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

		public ConnectionSQL() {
			super();
			this.sql =  "jdbc:sqlserver://localhost;databaseName=WebThiTracNghiem;integratedSecurity=true";
		}
		public Connection connect() throws Exception{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				Connection  connect = DriverManager.getConnection(this.sql);
				System.out.println("SQQ");
				return connect;
			} catch (ClassNotFoundException e) {
				System.out.println(e.getMessage());
			}
			return null;
		}
		
		public void thucThiCauLenhSQL(String sql) throws Exception{
			Connection connect =connect();
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
			ConnectionSQL connect = new ConnectionSQL();
			System.out.println(connect.connect());
		}
}
