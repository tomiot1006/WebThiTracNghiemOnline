package MVCModel;

public class MonHoc{
	private int MaMH;
	private int MaKhoa;
	private String TenMH;
	public MonHoc() {}
	public MonHoc(int MaMH,int MaKhoa,String TenMH) {
		this.MaMH=MaMH;
		this.MaKhoa=MaKhoa;
		this.TenMH=TenMH;
		
	}
	public int getMaMH() {
		return MaMH;
	}
	public void setMaMH(int maMH) {
		MaMH = maMH;
	}
	public int getMaKhoa() {
		return MaKhoa;
	}
	public void setMaKhoa(int maKhoa) {
		MaKhoa = maKhoa;
	}
	public String getTenMH() {
		return TenMH;
	}
	public void setTenMH(String tenMH) {
		TenMH = tenMH;
	}
	
	
}