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
 * Servlet implementation class ThemMH
 */
@WebServlet("/ThemMH")
public class ThemMH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemMH() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/ThemMH.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
      
			int	mamh=1;//Integer.parseInt(request.getParameter("mamh"));
		String tenmh = request.getParameter("tenmh");
		int	makhoa=Integer.parseInt(request.getParameter("makhoa"));
		
		try {
			ResultSet rs = new ConnectionSQL().chonDuLieuTuDTB("select * from MonHoc");
			while(rs.next()){
				String s = rs.getString(1);
				mamh=Integer.parseInt(s)+1;
			}
			//System.out.print(mamh);
			new ConnectionSQL().thucThiCauLenhSQL("insert into MonHoc values('"+mamh+"','"+tenmh+"','"+makhoa+"')");
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
			
		} catch (Exception e) {
		//	System.out.println("co loi khi them");
			e.printStackTrace();
		}
		
		
	}

}
