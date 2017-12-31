package Model;

import java.sql.ResultSet;
public class DBLichThi {
	DAL dal;
	public DBLichThi(){
		dal=new DAL();
	}
	
	public ResultSet getListLichThi() {
		//return dal.getData("select * from LichThi");
		String sql = "SELECT dbo.LichThi.id,dbo.MonHoc.TenMH,ngayThi,ngayKetThucThi,thoiGianThi,thoiGianKetThuc "
				+ " FROM dbo.LichThi JOIN dbo.MonHoc ON MonHoc.MaMH = LichThi.maMon";
		return dal.getData(sql);
	}
	public ResultSet getLichThiByID(String id)
	{
		return dal.getData("select * from LichThi where id = '"+id+"'");
	}
	
}
