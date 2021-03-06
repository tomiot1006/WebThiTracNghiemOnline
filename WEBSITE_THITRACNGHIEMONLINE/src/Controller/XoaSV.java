package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ConnectionSQL;

/**
 * Servlet implementation class XoaSV
 */
@WebServlet("/XoaSV")
public class XoaSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XoaSV() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stt = request.getParameter("stt");
		try {
			new ConnectionSQL().thucThiCauLenhSQL("delete from Account where UserName='"+stt+"'");
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
			//response.sendRedirect("/WEB-INF/admin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
