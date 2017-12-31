package Controller;
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DBDeThi;
@WebServlet("/layDSDeThi")
public class layDSDeThi extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public layDSDeThi() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		DBDeThi dbDT = new DBDeThi();	
		ResultSet rs= dbDT.getListDeThi();
		request.setAttribute("rs", rs);
		request.getRequestDispatcher("WEB-INF/xemDeThi.jsp").forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}
}
