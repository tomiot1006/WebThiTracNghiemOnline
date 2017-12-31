package MVCModel;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public  class DataAccess {

	private static final String DRIVER_JDBC = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL_DB = "jdbc:sqlserver://localhost;databaseName=WebThiTracNghiem;integratedSecurity=true";
	static Connection conn;
	public static String err;
	public static String error;
	public static Connection getDBConnectionSQLServer() {
		conn = null;
		err = "";
		try {
			Class.forName(DRIVER_JDBC);
		} catch (ClassNotFoundException e) {
			err = e.getMessage();
		}
		try {
			conn = DriverManager.getConnection(URL_DB);

		} catch (SQLException e) {
			err = e.getMessage();
		}

		return conn;
	}
	public static void main(String[] args) throws SQLException {
		conn = null;
		//int t=UpdateMucDo(3,"PHương");
		//System.out.println(t);
		err = "";
		try
		{
			Class.forName(DRIVER_JDBC);
		} 
		catch (ClassNotFoundException e)
		{
			err = e.getMessage();
		}
		try 
		{
			conn = DriverManager.getConnection(URL_DB);
			System.out.println("Connected successfully hihi...");  
			Statement st= null;  
			ResultSet rs = null;
			int MaMD;
			String TenMD;
			//List<MucDo> dsMucDo= new ArrayList<MucDo>();

			String sql= "select * from MucDo";
			st = conn.createStatement();
			rs = st.executeQuery(sql);

			while(rs.next())
			{

				//MaCD=rs1.getInt("MaCD");
				MaMD=rs.getInt("MaMD");
				System.out.println(MaMD);
				TenMD=rs.getString("TenMD");
				//dsMucDo.add(new MucDo(MaMD,TenMD));			

			}

		}
		catch (SQLException e)
		{
			err = e.getMessage();
		}
		
		
	}
	
}
