package MVCModel;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class DanhSachMonHoc {
	public static String error;
	public static List<MonHoc> GetDSMonHocGVDay(int UserName) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int MaMH;
	    int MaKhoa;
	    String TenMH;
	    
	    //CallableStatement stsm;
	    List<MonHoc> dsMonHoc= new ArrayList<MonHoc>();
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select MonHoc.MaMH as MaMH,TenMH,MaKhoa\r\n" + 
	    			"from GiangDay,MonHoc\r\n" + 
	    			"where GiangDay.MaMH=MonHoc.MaMH and GiangDay.MaGV="+UserName+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MaMH"));
					MaMH=rs.getInt("MaMH");
					TenMH=rs.getString("TenMH");
					MaKhoa=rs.getInt("MaKhoa");
					
					dsMonHoc.add(new MonHoc(MaMH,MaKhoa,TenMH));			
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
	    return dsMonHoc;
	}
	public static List<MonHoc> GetMonHocTheoMon(int maMH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int MaMH;
	    int MaKhoa;
	    String TenMH;
	    
	    //CallableStatement stsm;
	    List<MonHoc> dsMonHoc= new ArrayList<MonHoc>();
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select *\r\n" + 
	    			"from MonHoc where MaMH="+maMH+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MaMH"));
					MaMH=rs.getInt("MaMH");
					TenMH=rs.getString("TenMH");
					MaKhoa=rs.getInt("MaKhoa");
					
					dsMonHoc.add(new MonHoc(MaMH,MaKhoa,TenMH));			
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
	    return dsMonHoc;
	}
	public static int InsertMucDo(int maMD, String TenMD) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spInsertMucDo(?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1, maMD);;
			stmt.setString(2, TenMD);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static int UpdateMucDo(int maMD, String TenMD) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spUpdatetMucDo(?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1, maMD);;
			stmt.setString(2, TenMD);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static void main(String[] args) {
		try {
			GetMonHocTheoMon(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}