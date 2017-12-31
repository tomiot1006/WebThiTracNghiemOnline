package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DBDeThi;

@WebServlet("/TTCN")
public class TTCN extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TTCN() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DBDeThi db = new DBDeThi();
		String UserName = "2";
		ResultSet rs = db.layDSAccount(UserName);
		request.setAttribute("rs", rs);		
		request.getRequestDispatcher("WEB-INF/TTCN.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
