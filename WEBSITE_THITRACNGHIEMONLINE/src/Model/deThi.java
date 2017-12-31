package Model;

public class deThi {

	int maDT,maMH,thoiGianLamBai;
	int isDiable = 0;
	
	public deThi(int maDT, int maMH, int thoiGianLamBai, int isDisable) {
		this.maDT=maDT;
		this.maMH=maMH;
		this.thoiGianLamBai=thoiGianLamBai;
		this.isDiable=isDisable;
		
	}

	public int getMaDT() {
		return maDT;
	}

	public void setMaDT(int maDT) {
		this.maDT = maDT;
	}

	public int getMaMH() {
		return maMH;
	}

	public void setMaMH(int maMH) {
		this.maMH = maMH;
	}

	public int getThoiGianLamBai() {
		return thoiGianLamBai;
	}

	public void setThoiGianLamBai(int thoiGianLamBai) {
		this.thoiGianLamBai = thoiGianLamBai;
	}

	public int getIsDiable() {
		return isDiable;
	}

	public void setIsDiable(int isDiable) {
		this.isDiable = isDiable;
	}
}
