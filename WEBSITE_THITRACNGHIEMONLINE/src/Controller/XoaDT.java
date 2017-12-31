package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Connect;

@WebServlet("/XoaDT")
public class XoaDT extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public XoaDT() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maDT =  request.getParameter("maDT");
		try {
			new Connect().thucThiCauLenhSQL("delete from DeThi where maDT = '"+maDT+"'");
			request.getRequestDispatcher("WEB-INF/xemDeThi.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
