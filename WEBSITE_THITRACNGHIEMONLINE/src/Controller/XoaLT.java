package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Connect;

@WebServlet("/XoaLT")
public class XoaLT extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public XoaLT()
	{
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		try {
			new Connect().thucThiCauLenhSQL("delete from LichThi where id = '"+id+"'");
			request.getRequestDispatcher("WEB-INF/xemLichThi.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		DBLichThi dbdetai =new DBLichThi();
//		ResultSet rs = dbdetai.getListLichThi();
//		request.setAttribute("rs", rs);
//		request.getRequestDispatcher("WEB-INF/xemLichThi.jsp").forward(request, response);		
//	}
}
