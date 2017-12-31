package MVCModel;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DanhSachCauHoi {
	public static String error;
	public static List<CauHoi> GetDSCauHoi() throws SQLException
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
	    			"from CauHoi";
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
	public static int GetMaMH(int maCH) throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int maMH = 0;
	    
	    //CallableStatement stsm;
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select MaMH\r\n" + 
	    			"from CAUHOI where MaCH="+maCH+"";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MaMH"));
				maMH=rs.getInt("MaMH");
					
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
	    return maMH;
	}
	public static int GetMAXMaCH() throws SQLException
	{
		Connection conn = null;  
	    Statement st	 = null;  
	    ResultSet rs = null;
	    
	    int MAXmaCH = 0;
	    
	    //CallableStatement stsm;
	    try {
	    	conn=DataAccess.getDBConnectionSQLServer();
	    	String sql= "select MAX(MaCH) as MAXMaCH\r\n" + 
	    			"from CAUHOI";
			 st = conn.createStatement();
			 rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getInt("MAXMaCH"));
				 MAXmaCH=rs.getInt("MAXMaCH");
					
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
	    return MAXmaCH;
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
	public static int InsertCauHoi(int MaCH, int MaMH,int MaCD,String NoiDung,String DapAnA,String DapAnB,String DapAnC,String DapAnD,String DapAn) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spInsertCauHoi(?,?,?,?,?,?,?,?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1,MaCH);
			stmt.setInt(2,MaMH);
			stmt.setInt(3,MaCD);
			stmt.setString(4, NoiDung);
			stmt.setString(5, DapAnA);
			stmt.setString(6, DapAnB);
			stmt.setString(7, DapAnC);
			stmt.setString(8, DapAnD);
			stmt.setString(9, DapAn);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static int UpdateCauHoi(int maCH, int MaMH,int maChuDe,String NoiDung,String DapAnA,String DapAnB,String DapAnC,String DapAnD,String DapAn) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spUpdateCauHoi(?,?,?,?,?,?,?,?,?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1,maCH);
			stmt.setInt(2,MaMH);
			stmt.setInt(3,maChuDe);
			stmt.setString(4, NoiDung);
			stmt.setString(5, DapAnA);
			stmt.setString(6, DapAnB);
			stmt.setString(7, DapAnC);
			stmt.setString(8, DapAnD);
			stmt.setString(9, DapAn);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static int DeleteCauHoi(int MaCH) {
		CallableStatement stmt;
		int result = 0;
		Connection conn = DataAccess.getDBConnectionSQLServer();
		if(conn == null) {
			error = DataAccess.err;
			return 0;
		}
		try {
			String sql = "{call spDeleteCauHoi(?)}";
		    stmt = conn.prepareCall(sql);
			stmt.setInt(1,MaCH);
			
			result = stmt.executeUpdate();
		} catch (SQLException e) {
			error = e.getMessage();
		}
		return result;
	}
	public static void main(String[] args) {
		
		try {
			GetMAXMaCH();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
