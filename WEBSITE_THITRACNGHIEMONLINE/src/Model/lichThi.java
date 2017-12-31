package Model;

public class lichThi {
	int maMon;
	String ngayThi,ngayKetThucThi;
	String thoiGianThi;
	String thoiGianKetThuc;
	public lichThi(int maMon, String ngayThi,String ngayKetThucThi, String thoiGianThi, String thoiGianKetThuc) {
		this.maMon=maMon;
		
		this.ngayThi=ngayThi;
		this.thoiGianThi=thoiGianThi;
		this.thoiGianKetThuc=thoiGianKetThuc;
		this.ngayKetThucThi=ngayKetThucThi;
	}
	
	public String getNgayKetThucThi() {
		return ngayKetThucThi;
	}

	public void setNgayKetThucThi(String ngayKetThucThi) {
		this.ngayKetThucThi = ngayKetThucThi;
	}

	public String getThoiGianKetThuc() {
		return thoiGianKetThuc;
	}

	public void setThoiGianKetThuc(String thoiGianKetThuc) {
		this.thoiGianKetThuc = thoiGianKetThuc;
	}

	public String getThoiGianThi() {
		return thoiGianThi;
	}

	public void setThoiGianThi(String thoiGianThi) {
		this.thoiGianThi = thoiGianThi;
	}

	public int getMaMon() {
		return maMon;
	}

	public void setMaMon(int maMon) {
		this.maMon = maMon;
	}

	public String getNgayThi() {
		return ngayThi;
	}

	public void setNgayThi(String ngayThi) {
		this.ngayThi = ngayThi;
	}
	
}
