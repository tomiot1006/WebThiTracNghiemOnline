package Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.ConnectionSQL;

/**
 * Servlet implementation class TinhDiem
 */
@WebServlet("/TinhDiem")
public class TinhDiem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TinhDiem() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
		int username2 = (int) session.getAttribute("tendangnhap");
		System.out.println("user name"+username2);
		int stt = Integer.parseInt(request.getParameter("stt2"));
		System.out.println(stt);
		String sql = "select c.NoiDung,c.DapAnA,c.DapAnB,c.DapAnC,c.DapAnD,c.DapAn,c.MaCH,c.MaMH from question as q ,Dethi as d ,CauHoi as c where  q.MaCH=c.MaCH and d.MaMH=c.MaMH AND q.MaDT=d.MaDT and q.MaDT="
				+ stt;
		System.out.println("sql="+sql);
		String dapan="";
		int diem=0;
		int socau=0;
		int id=0;
		float ketqua=0;
		int mamh=0;
		float muoi=10;
		try {
			ResultSet rs1 = new ConnectionSQL().chonDuLieuTuDTB("select * from BangDiem");
			while(rs1.next()){
				String s1 = rs1.getString(1);
				id=Integer.parseInt(s1)+1;
			}
			System.out.println("id="+id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			ResultSet rs = new ConnectionSQL().chonDuLieuTuDTB(sql);
			while(rs.next()){
				String s = rs.getString(6);
				System.out.println("s="+s);
				socau++;
				mamh=Integer.parseInt(rs.getString(8));
				System.out.println("socau="+socau);
				if(request.getParameter(rs.getString(7)) == null) {
					dapan="e";
				}
				else {
					dapan=request.getParameter(rs.getString(7));
				}
				System.out.println("dapan="+dapan);
				if(s.equals(dapan)){
					diem++;
					System.out.println("diem="+diem);
				}
			}
			float socaudung=diem;
			float socauthi=socau;
			ketqua=muoi/socauthi*socaudung;
			System.out.println("ketqua="+ketqua);
			new ConnectionSQL().thucThiCauLenhSQL("insert into BangDiem values('"+id+"','"+mamh+"','"+ketqua+"','"+username2+"')");
			request.getRequestDispatcher("/WEB-INF/sinhvien.jsp").forward(request, response);
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}

}
