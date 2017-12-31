package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.ConnectionSQL;

/**
 * Servlet implementation class ThemTB
 */
@WebServlet("/ThemTB")
public class ThemTB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThemTB() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/ThemTB.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		//String stt=request.getParameter("stt");
		   HttpSession session = request.getSession();
			int username2 = (int) session.getAttribute("tendangnhap");
		//System.out.println(stt);
		String chude=request.getParameter("tieudeThongBao");
		String noidung=request.getParameter("noidungThongBao");
		String[] sinhvien=request.getParameterValues("sinhvienck");
		String[] giangvien=request.getParameterValues("giangvienck");
		String[] nguoitaodethi=request.getParameterValues("nguoitaodethick");
		//System.out.println(sinhvien);
		//System.out.println(giangvien);
		//System.out.println(nguoitaodethi);
		 Date date = new Date();  // import java.util.Date;
		 String ngaygui=date.toString();
		 System.out.println(ngaygui);
		int sv=0;
		int gv=0;
		int ntdt=0;
		int mang=5;
		if(sinhvien!=null)
		{
			sv=1;
			//System.out.println("sv="+sv);
		}
		if(giangvien!=null)
		{
			gv=1;
			//System.out.println("gv="+gv);
		}
		if(nguoitaodethi!=null)
		{
			ntdt=1;
			//System.out.println("ntdt="+ntdt);
		}
	//	System.out.println(chude);
		//System.out.println(noidung);
		int idtb=0;
		try {
			ResultSet rs = new ConnectionSQL().chonDuLieuTuDTB("select * from ThongBao");
			while(rs.next()){
				String s = rs.getString(1);
				idtb=Integer.parseInt(s)+1;
			}
			//System.out.print(idtb);
			new ConnectionSQL().thucThiCauLenhSQL("insert into dbo.ThongBao values('"+idtb+"','"+username2+"','"+sv+"','"+gv+"','"+ntdt+"','0','"+chude+"','"+noidung+"','"+ngaygui+"')");

			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);

		} catch (Exception e) {
			System.out.println("co loi khi them");
			e.printStackTrace();
		}

	}

}
