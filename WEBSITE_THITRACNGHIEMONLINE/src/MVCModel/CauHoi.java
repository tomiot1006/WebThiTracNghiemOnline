package MVCModel;

public class CauHoi {
	private int MaCH;
	private int MaMH;
	private int MaCD;
	private String NoiDung;
	private String DapAnA;
	private String DapAnB;
	private String DapAnC;
	private String DapAnD;
	private String DapAn;
	
	
	public CauHoi() {}
	public CauHoi(int MaCH,int MaMH,int MaCD,String NoiDung,String DapAnA,String DapAnB,String DapAnC,String DapAnD,String DapAn)
	{
		this.MaCH=MaCH;
		this.MaMH=MaMH;		
		this.MaCD=MaCD;
		this.NoiDung=NoiDung;
		this.DapAnA=DapAnA;
		this.DapAnB=DapAnB;
		this.DapAnC=DapAnC;
		this.DapAnD=DapAnD;
		this.DapAn=DapAn;	
	}
	public int getMaCH() {
		return MaCH;
	}
	public void setMaCH(int maCH) {
		MaCH = maCH;
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
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getDapAnA() {
		return DapAnA;
	}
	public void setDapAnA(String dapAnA) {
		DapAnA = dapAnA;
	}
	public String getDapAnB() {
		return DapAnB;
	}
	public void setDapAnB(String dapAnB) {
		DapAnB = dapAnB;
	}
	public String getDapAnC() {
		return DapAnC;
	}
	public void setDapAnC(String dapAnC) {
		DapAnC = dapAnC;
	}
	public String getDapAnD() {
		return DapAnD;
	}
	public void setDapAnD(String dapAnD) {
		DapAnD = dapAnD;
	}
	public String getDapAn() {
		return DapAn;
	}
	public void setDapAn(String dapAn) {
		DapAn = dapAn;
	}
	
}
