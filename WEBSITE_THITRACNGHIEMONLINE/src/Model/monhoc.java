package Model;

public class monhoc {
	
	int MaMH,MaKhoa;
	String TenMH;
	public monhoc(int MaMH, String TenMH, int MaKhoa) {
		this.MaMH = MaMH;
		this.TenMH=TenMH;
		this.MaKhoa=MaKhoa;
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
