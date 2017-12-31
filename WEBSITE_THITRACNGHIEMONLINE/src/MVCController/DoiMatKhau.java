package MVCController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVCModel.LayThongTinGiangVien;


@WebServlet("/DoiMatKhau")
public class DoiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DoiMatKhau() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int MaUserName = (int) request.getSession().getAttribute("UserName");
		String MKHienTai=request.getParameter("MKHienTai");
		String MKMoi=request.getParameter("MKMoi");
		try {
			if(LayThongTinGiangVien.LayMKCu(MaUserName).equals(MKHienTai))
			{
				LayThongTinGiangVien.UpdateMatKhau(MaUserName, MKMoi);
				request.getSession().setAttribute("Key", "1");
				
			}
			else
			{
				request.getSession().setAttribute("Key", "0");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/DoiMatKhauGiangVien.jsp");
		dispatcher.forward(request, response);
	}
			

}
