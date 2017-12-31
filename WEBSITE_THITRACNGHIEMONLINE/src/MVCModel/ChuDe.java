package MVCModel;

public class ChuDe {
	private int MaMH;
	private int MaCD;
	private String TenChuDe;
	
	public int getMaMH() {
		return MaMH;
	}
	public void setMaMH(int maMH) {
		MaMH = maMH;
	}
	public String getTenChuDe() {
		return TenChuDe;
	}
	public void setTenChuDe(String tenChuDe) {
		TenChuDe = tenChuDe;
	}
	public long getMaCD() {
		return MaCD;
	}
	public void setMaCD(int maCD) {
		MaCD = maCD;
	}
	
	
	public ChuDe() {}
	public ChuDe(int MaMH,int MaCD,String  TenChuDe) {
		this.MaMH=MaMH;
		this.MaCD=MaCD;
		this.TenChuDe=TenChuDe;
		
	}
	
}

