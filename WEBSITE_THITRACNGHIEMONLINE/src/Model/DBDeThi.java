package Model;
import java.sql.ResultSet;


public class DBDeThi {
	DAL dal;
	public DBDeThi() {
		dal=new DAL();
	}
	public ResultSet getListDeThi() {
		return dal.getData("SELECT maDT,TenMH,ThoiGianLamBai,isDisable "
				+ " FROM dbo.DeThi JOIN dbo.MonHoc ON MonHoc.MaMH = DeThi.MaMH " 
				+ " WHERE DeThi.MaMH=dbo.MonHoc.MaMH");		
	}
	
	public ResultSet layDSAccount(String UserName)
	{
		return dal.getData("select * from Account where UserName = "+ UserName+"");
	}
	
	public ResultSet getDeThiByID(String maDT)
	{
		return dal.getData("select * from DeThi where maDT = '"+maDT+"'");
	}
	public ResultSet getChuDeTheoMaMH(String maMH)
	{
		return dal.getData("SELECT TenCD,MaCD FROM dbo.ChuDe JOIN dbo.MonHoc ON MonHoc.MaMH = ChuDe.MaMH"
				+ " WHERE MonHoc.TenMH = N'"+maMH+"'");
	}

	public ResultSet demSoLuongChuDe(String MaMH) {
		String sql= "SELECT COUNT(*) FROM dbo.ChuDe JOIN dbo.MonHoc ON MonHoc.MaMH = ChuDe.MaMH WHERE MonHoc.MaMH = " +MaMH;
		return dal.getData(sql);

	}

	public ResultSet randomQuestion(int SoCauHoi,String MaMH,String MaCD) {/*láº¥y random sá»‘ cÃ¢u há»�i theo mÃ£ mÃ´n há»�c*/
		String sql= " SELECT TOP "+SoCauHoi+" MaCH "
				+ " FROM dbo.CauHoi JOIN dbo.ChuDe ON ChuDe.MaCD = CauHoi.MaCD "
				+ " WHERE dbo.ChuDe.MaCD = "+ MaCD +" AND dbo.CauHoi.MaMH = "+ MaMH + " ORDER by NEWID() ";
		return dal.getData(sql);
	}
			
	public ResultSet getListMonHoc()
	{
		return dal.getData("select * from MonHoc");
	}

	public ResultSet getChuDeTheoMonHoc(String MaMH)
	{
		String sql="SELECT TenCD,MaCD,ChuDe.MaMH,TenMH "
		//String sql="SELECT TenCD,MaCD,ChuDe.MaMH,TenMH "
				+ "FROM dbo.ChuDe JOIN dbo.MonHoc ON MonHoc.MaMH = ChuDe.MaMH WHERE ChuDe.MaMH = "+ MaMH;
		return dal.getData(sql);

	}
	public ResultSet laySoLuongCauHoi(String MaMH,String TenCD)
	{
		String sql="SELECT dbo.CauHoi.NoiDung,dbo.CauHoi.DapAnA,"
				+ "dbo.CauHoi.DapAnB,dbo.CauHoi.DapAnC,dbo.CauHoi.DapAnD,dbo.CauHoi.DapAn "+ 
				"FROM dbo.CauHoi JOIN dbo.ChuDe ON ChuDe.MaCD = CauHoi.MaCD" + 
				" WHERE dbo.ChuDe.TenCD = N'"+ TenCD +"' AND dbo.CauHoi.MaMH = '"+MaMH+"'";	
		return dal.getData(sql);
	}

	public ResultSet layMaDeThi(String MaMH)/*Lay MaDT trong bang De Thi*/
	{
		String sql=" SELECT MaDT FROM dbo.DeThi WHERE isDisable = 0 AND MaMH = "+MaMH;
		return dal.getData(sql);
	}
	
//	public ResultSet layCauHoi(String MaDT,String MaCH)
//	{
//		String sql=	"INSERT INTO dbo.Question VALUES( " + MaDT +","+MaCH+")";	
//		return dal.getData(sql);
//	}

	
	public ResultSet layCauHoiTheoMonHoc(String MaMH)
	{
		String sql = "SELECT *" + 
				" FROM dbo.CauHoi WHERE MaMH = " + MaMH;
		return dal.getData(sql);
	}
}
