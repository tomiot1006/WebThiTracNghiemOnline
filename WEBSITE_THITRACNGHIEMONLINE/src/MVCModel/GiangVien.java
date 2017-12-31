package MVCModel;

public class GiangVien {
	int UserName;
	String HoTen;
	int MaKhoa;
	String TenKhoa;
	String NgaySinh;
	String GioiTinh;
	String CMND;
	String QueQuan;
	public GiangVien(int UserName,String HoTen,int MaKhoa,String TenKhoa,String NgaySinh,String GioiTinh,String CMND,String QueQuan ) {
		this.UserName=UserName;
		this.HoTen=HoTen;
		this.MaKhoa=MaKhoa;
		this.TenKhoa=TenKhoa;
		this.NgaySinh=NgaySinh;
		this.GioiTinh=GioiTinh;
		this.CMND=CMND;
		this.QueQuan=QueQuan;
		
	
	}
	public int getUserName() {
		return UserName;
	}
	public void setUserName(int userName) {
		UserName = userName;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public int getMaKhoa() {
		return MaKhoa;
	}
	public void setMaKhoa(int maKhoa) {
		MaKhoa = maKhoa;
	}
	public String getTenKhoa() {
		return TenKhoa;
	}
	public void setTenKhoa(String tenKhoa) {
		TenKhoa = tenKhoa;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getCMND() {
		return CMND;
	}
	public void setCMND(String cMND) {
		CMND = cMND;
	}
	public String getQueQuan() {
		return QueQuan;
	}
	public void setQueQuan(String queQuan) {
		QueQuan = queQuan;
	}
	
}
