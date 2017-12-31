package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Connect;

@WebServlet("/themLichThi")

public class themLichThi extends HttpServlet{

private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maMon = request.getParameter("maMon");
		String ngayThi= request.getParameter("ngayThi");
		String ngayKetThucThi = request.getParameter("ngayKetThucThi");
		String thoiGianThi =request.getParameter("thoiGianThi");
		String thoiGianKetThuc = request.getParameter("thoiGianKetThuc");
		
		try {
			
			String sql = "insert into dbo.LichThi(maMon,ngayThi,ngayKetThucThi,thoiGianThi,thoiGianKetThuc) values("
					+ maMon +",'"+ngayThi+"','"+ngayKetThucThi+"','"+thoiGianThi+"','"+thoiGianKetThuc+"')";			
			try {
				new Connect().thucThiCauLenhSQL(sql);
				request.getRequestDispatcher("WEB-INF/xemLichThi.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
				
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}

	public themLichThi() {
        super();
        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		doGet(request, response);		
	}
}
