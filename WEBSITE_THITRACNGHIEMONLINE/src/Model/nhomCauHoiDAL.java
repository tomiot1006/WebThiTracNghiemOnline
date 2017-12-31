package Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class nhomCauHoiDAL {
	DAL dal;
	public nhomCauHoiDAL() {
		dal=new DAL();
	}
	public ArrayList<ChuDe> listNhomCauHoi(){
		ResultSet rs=dal.getData("select * from ChuDe");
		ArrayList<ChuDe> list=new ArrayList<>();
		try {
			while(rs.next()) {
				ChuDe nch=new ChuDe(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getString(4));
				list.add(nch);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<ChuDe> listNhomCauHoiTheoMaMonHoc(int maMonHoc){
		ResultSet rs=dal.getData("select * from CauHoi where MaCH ="+maMonHoc+"");
		ArrayList<ChuDe> list=new ArrayList<>();
		try {
			while(rs.next()) {
			ChuDe nch=new ChuDe(rs.getInt(1), rs.getInt(2), rs.getInt(3),rs.getString(4));
			list.add(nch);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
