package MVCModel;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class LayThongTinGiangVien {
	public static String error;
	public static GiangVien GetTTGiangVien(int MaUserName) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int UserName;
		String HoTen;
		int MaKhoa;
		String TenKhoa;
		String NgaySinh;
		String GioiTinh;
		String CMND;
		String QueQuan;
		GiangVien TTGiangVien = null;
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select UserName,HoTen,Account.MaKhoa as MaKhoa,TenKhoa,NgaySinh,GioiTinh,CMND,QueQuan \r\n" + 
	    			"From Account,Khoa where Account.MaKhoa=Khoa.MaKhoa and UserName="+MaUserName+"";
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				System.out.println(rs.getInt("UserName"));
				UserName=rs.getInt("UserName");
				HoTen=rs.getString("HoTen");
				MaKhoa=rs.getInt("MaKhoa");
				TenKhoa=rs.getString("TenKhoa");
				NgaySinh=rs.getString("NgaySinh");
				GioiTinh=rs.getString("GioiTinh");
				CMND=rs.getString("CMND");
				QueQuan=rs.getString("QueQuan");
				TTGiangVien=new GiangVien(UserName, HoTen, MaKhoa, TenKhoa, NgaySinh, GioiTinh, CMND, QueQuan);
			}
			
	    }
	    catch (Exception e) {
			e.printStackTrace();
			
		}
	    try {
		    if (conn != null) {
		      conn.close();
		    }
		    if (st != null) {
		     st.close();
		    }
		    if (rs != null) {
		     rs.close();
		    }
		   } catch (Exception ex) {
		     ex.printStackTrace();
		   }
	    return TTGiangVien;
	}
	public static String LayMKCu(int MaUserName) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    
		String PassWord = null;
		
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select PassWord\r\n" + 
	    			"from Account where UserName="+MaUserName+"";
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				System.out.println(rs.getString("PassWord"));
				PassWord=rs.getString("PassWord");
			}
			
	    }
	    catch (Exception e) {
			e.printStackTrace();
			
		}
	    try {
		    if (conn != null) {
		      conn.close();
		    }
		    if (st != null) {
		     st.close();
		    }
		    if (rs != null) {
		     rs.close();
		    }
		   } catch (Exception ex) {
		     ex.printStackTrace();
		   }
	    return PassWord;
	}
	
	public static int UpdateMatKhau(int UserName,String PassWord) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spUpdateMatKhau(?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1,UserName);
			stmt.setString(2, PassWord);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static void main(String[] args) throws SQLException {
		
		//GiangVien gv=GetTTGiangVien(1);
		//System.out.println(gv.HoTen);
		UpdateMatKhau(1, "123");
		
	}
}