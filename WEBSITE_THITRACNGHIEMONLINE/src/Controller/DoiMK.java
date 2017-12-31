package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ConnectionSQL;

/**
 * Servlet implementation class DoiMK
 */
@WebServlet("/DoiMK")
public class DoiMK extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoiMK() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		int stt = Integer.parseInt(request.getParameter("id"));
		System.out.println("stt ="+stt);
		String pass = request.getParameter("pass");
		System.out.println("pass ="+pass);
		String passnew1 = request.getParameter("passnew1");
		System.out.println("pass1 ="+passnew1);
		String passnew2 = request.getParameter("passnew2");
		System.out.println("pass2 ="+passnew2);
		String sql="select ac.PassWord from Account as ac where UserName="+stt;
		System.out.println("sql ="+sql);
		String hoten="";
		try {
			ResultSet rs = new ConnectionSQL().chonDuLieuTuDTB(sql);
			while(rs.next()){
				hoten = rs.getString(1);
				System.out.println("hoten ="+hoten);
			}
			if(pass.equals(hoten)) {
				new ConnectionSQL().thucThiCauLenhSQL("update Account set PassWord='"+passnew1+"' where UserName='"+stt+"'");
				request.getRequestDispatcher("/WEB-INF/sinhvien.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("/WEB-INF/doimatkhau.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			System.out.println("co loi khi them");
			e.printStackTrace();
		}
	}

}
