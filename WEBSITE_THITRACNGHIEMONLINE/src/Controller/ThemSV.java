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

import Model.ConnectionSQL;

/**
 * Servlet implementation class ThemSV
 */
@WebServlet("/ThemSV")
public class ThemSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemSV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/ThemSV.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		 if(request.getParameter("txtPhoto") == null)
         {
             response.sendRedirect("upload.jsp");
             return;
         }
         PrintWriter out = response.getWriter();

         FileInputStream input = null;
         File theFile = new File(request.getParameter("txtPhoto"));
		int username = 1;//Integer.parseInt(request.getParameter("username"));
		String hoten = request.getParameter("hoten");
		
			int	khoa=Integer.parseInt(request.getParameter("khoa"));
	System.out.println(request.getParameter("khoa"));
		String ngaysinh = request.getParameter("ngaysinh");
		String cmnd = request.getParameter("cmnd");
		String quequan = request.getParameter("quequan");
		String hinhanh = theFile.getAbsolutePath();
		String gioitinh = request.getParameter("gioitinh");
		String type="sinhvien";
		String pass="12345";
		
		//String stt="";
		try {
			ResultSet rs = new ConnectionSQL().chonDuLieuTuDTB("select * from Account");
			while(rs.next()){
				String s = rs.getString(1);
				username=Integer.parseInt(s)+1;
		}
			new ConnectionSQL().thucThiCauLenhSQL("insert into Account values('"+username+"','"+pass+"','"+hoten+"','"+khoa+"','"+ngaysinh+"','"+gioitinh+"','"+cmnd+"','"+quequan+"','"+hinhanh+"','"+type+"')");
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
