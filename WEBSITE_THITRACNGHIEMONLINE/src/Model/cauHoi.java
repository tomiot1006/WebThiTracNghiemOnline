package Model;

public class cauHoi {
	int MaCH,MaMH,MaCD;
	String NoiDung, DapAnA, DapAnB,DapAnC,DapAnD,DapAn;

	public cauHoi(int MaCH, int MaMH, int MaCD,String NoiDung, String DapAnA, String DapAnB,String DapAnC,String DapAnD,String DapAn) {	
		this.NoiDung=NoiDung;
		this.DapAn=DapAn;
		this.DapAnA=DapAnA;
		this.DapAnB=DapAnB;
		this.DapAnC=DapAnC;
		this.DapAnD=DapAnD;
		this.MaMH=MaMH;
		this.MaCD = MaCD;
		this.MaCH=MaCH;
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
