package Model;

public class ChuDe {
	int id,MaMH,MaCD;
	String TenCD;
	public ChuDe(int id, int MaMH, int MaCD, String TenCD) {
		this.id = id;
		this.MaMH=MaMH;
		this.MaCD=MaCD;
		this.TenCD=TenCD;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMaMH() {
		return MaMH;
	}
	public void setMaMH(int maMH) {
		MaMH = maMH;
	}
	public int getMaCD() {
		return MaCD;
	}
	public void setMaCD(int maCD) {
		MaCD = maCD;
	}
	public String getTenCD() {
		return TenCD;
	}
	public void setTenCD(String tenCD) {
		TenCD = tenCD;
	}

}
