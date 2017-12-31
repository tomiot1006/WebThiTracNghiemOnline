package MVCModel;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DanhSachChuDe {
	public static String error;
	public static List<ChuDe> GetDSChuDe(int maMH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
		int MaMH;
		int MaCD;
		String TenCD;
	    
	    //CallableStatement stsm;
	    List<ChuDe> dsChuDe= new ArrayList<ChuDe>();
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select*\r\n" + 
	    			"from ChuDe where MaMH="+maMH+"\r\n";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MaMH"));
					
					MaMH=rs.getInt("MaMH");				
					MaCD=rs.getInt("MaCD");
					TenCD=rs.getString("TenCD");
					dsChuDe.add(new ChuDe(MaMH,MaCD,TenCD));
					
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
	    return dsChuDe;
	}
	public static String GetTenMH(int maCH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    String tenMH = null;
	    
	    //CallableStatement stsm;
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select TenMH,TenCD\r\n" + 
	    			"From CAUHOI,ChuDe,MonHoc\r\n" + 
	    			"where CAUHOI.MaMH=MonHoc.MaMH and CAUHOI.MaCD=ChuDe.MaCD and MaCH="+maCH+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getString("TenMH"));
					tenMH=rs.getString("TenMH");
					
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
	    return tenMH;
	}
	public static String GetTenCD(int maCH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    String tenCD = null;
	    
	    //CallableStatement stsm;
	    
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select TenMH,TenCD\r\n" + 
	    			"From CAUHOI,ChuDe,MonHoc\r\n" + 
	    			"where CAUHOI.MaMH=MonHoc.MaMH and CAUHOI.MaCD=ChuDe.MaCD and MaCH="+maCH+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getString("TenCD"));
					tenCD=rs.getString("TenCD");
					
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
	    return tenCD;
	}
	public static List<CauHoi> GetDSCauHoiTheoMon(int maMH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int MaCH;
		int MaMH;
		int MaCD;
		String NoiDung;
		String DapAnA;
		String DapAnB;
		String DapAnC;
		String DapAnD;
		String DapAn;
	    
	    //CallableStatement stsm;
	    List<CauHoi> dsCauHoi= new ArrayList<CauHoi>();
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select *\r\n" + 
	    			"from CauHoi where MaMH="+maMH+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MaCH"));
					MaCH=rs.getInt("MaCH");
					MaMH=rs.getInt("MaMH");				
					MaCD=rs.getInt("MaCD");
					NoiDung=rs.getString("NoiDung");
					DapAnA=rs.getString("DapAnA");
					DapAnB=rs.getString("DapAnB");
					DapAnC=rs.getString("DapAnC");
					DapAnD=rs.getString("DapAnD");
					DapAn=rs.getString("DapAn");
					
					dsCauHoi.add(new CauHoi(MaCH,MaMH,MaCD, NoiDung,DapAnA,DapAnB,DapAnC,DapAnD,DapAn));
					
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
	    return dsCauHoi;
	}
	public static CauHoi GetCauHoi(int maCH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int MaCH;
		int MaMH;
		int MaCD;
		String NoiDung;
		String DapAnA;
		String DapAnB;
		String DapAnC;
		String DapAnD;
		String DapAn;
	    
	    //CallableStatement stsm;
	    CauHoi CauHoi=null;
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select *\r\n" + 
	    			"from CauHoi where MaCH="+maCH+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MaCH"));
					MaCH=rs.getInt("MaCH");
					MaMH=rs.getInt("MaMH");				
					MaCD=rs.getInt("MaCD");
					NoiDung=rs.getString("NoiDung");
					DapAnA=rs.getString("DapAnA");
					DapAnB=rs.getString("DapAnB");
					DapAnC=rs.getString("DapAnC");
					DapAnD=rs.getString("DapAnD");
					DapAn=rs.getString("DapAn");
					
					CauHoi=new CauHoi(MaCH,MaMH,MaCD, NoiDung,DapAnA,DapAnB,DapAnC,DapAnD,DapAn);
					
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
	    return CauHoi;
	}
	public static int InsertChuDe(int MaMH,int MaCD,String TenCD){
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spInsertChuDe(?,?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1,MaMH);
			stmt.setInt(2,MaCD);
			stmt.setString(3, TenCD);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static int UpdateChuDe(int MaMH,int MaCD,String TenCD) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spUpdateChuDe(?,?,?)}";
		    stmt = conn.prepareCall(sql);

			stmt.setInt(1,MaMH);
			stmt.setInt(2,MaCD);
			stmt.setString(3, TenCD);
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static int DeleteChuDe(int MaMH,int MaCD) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spDeleteChuDe(?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1,MaMH);
			stmt.setInt(2,MaCD);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static void main(String[] args) {
		
		DeleteChuDe(2, 2);
	}
}
