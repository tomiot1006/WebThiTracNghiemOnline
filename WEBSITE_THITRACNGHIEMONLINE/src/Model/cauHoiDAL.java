package Model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class cauHoiDAL {
	DAL dal;
	public cauHoiDAL() {
		dal=new DAL();
	}
	public ArrayList<cauHoi> listCauHoi(){	
		ArrayList<cauHoi> list=new ArrayList<>();
		String sql = "select * from CauHoi";
		try {
			ResultSet rs=dal.getData(sql);
			while(rs.next()) {
				int MaCH = rs.getInt("MaCH");
				int MaMH = rs.getInt("MaMH");
				int MaCD = rs.getInt("MaCD");
				String NoiDung = rs.getString("NoiDung");
				String DapAnA = rs.getString("DapAnA");
				String DapAnB = rs.getString("DapAnB");
				String DapAnC = rs.getString("DapAnC");
				String DapAnD = rs.getString("DapAnD");
				String DapAn = rs.getString("DapAn");
				cauHoi ch = new cauHoi(MaCH, MaMH, MaCD, NoiDung, DapAnA, DapAnB, DapAnC, DapAnD, DapAn);
                list.add(ch);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
//	public cauHoi cauHoiTheoMaCauHoi(int maCauHoi) {
//		ArrayList<cauHoi> listCauHoi=listCauHoi();
//		for(cauHoi CH:listCauHoi)
//		{
//			if(maCauHoi==CH.getMaCH())
//			{
//				return CH;
//			}
//		}
//		return null;
//	}
	
	 public cauHoi getCauHoiID(String TenCD) throws SQLException {
	        String sql = "SELECT * FROM CauHoi WHERE TenCD=?";
	        PreparedStatement stmt = null;
			try {
				stmt = DAL.connect().prepareStatement(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        stmt.setString(4, TenCD);
	        ResultSet rs =  stmt.executeQuery();
	        cauHoi sp = null;
	        while (rs.next()) {
	            int MaCH = rs.getInt("MaCH");
	            int MaCD = rs.getInt("MaCD");
	            int MaMH = rs.getInt("MaMH");
	            String NoiDung = rs.getString("NoiDung");
				String DapAnA = rs.getString("DapAnA");
				String DapAnB = rs.getString("DapAnB");
				String DapAnC = rs.getString("DapAnC");
				String DapAnD = rs.getString("DapAnD");
				String DapAn = rs.getString("DapAn");
	            sp = new cauHoi(MaCH, MaMH, MaCD, NoiDung, DapAnA, DapAnB, DapAnC, DapAnD, DapAn);
	        }
	        return sp;
	    }
	
	
	public ArrayList<Integer> listQuestionRandom(int soLuongCauHoi){
		ResultSet rs=dal.getData("SELECT MaCH FROM CauHoi ORDER BY RAND() LIMIT "+soLuongCauHoi+"");
		ArrayList<Integer> list=new ArrayList<>();
		try {
			while(rs.next()) {
				list.add(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public int maCauHoi() {
		String sql="select max(MaCH)as MaCH from CauHoi";
		DAL dal= new DAL();
		ResultSet rs= dal.getData(sql);
		try {
			rs.next();
			return rs.getInt("MaCH");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
}
