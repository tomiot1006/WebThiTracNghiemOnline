package MVCController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVCModel.GiangVien;
import MVCModel.LayThongTinGiangVien;


@WebServlet("/ThongTinCaNhan")
public class ThongTinCaNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ThongTinCaNhan() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String MaUserName = (String) request.getSession().getAttribute("UserName");
		int UserName1 =Integer.parseInt(MaUserName);
		System.out.println("asssssssssssssssss"+MaUserName);
		GiangVien TTGiangVien=null;
		try {
			TTGiangVien=LayThongTinGiangVien.GetTTGiangVien(UserName1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getServletContext().setAttribute("TTGiangVien", TTGiangVien);
		
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/ThongTinGiangVien.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
