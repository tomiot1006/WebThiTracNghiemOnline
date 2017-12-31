package MVCController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoadSuaTaoCauHoi")
public class LoadSuaTaoCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoadSuaTaoCauHoi() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maCH=Integer.parseInt(request.getParameter("MaCH"));
		int maMH=Integer.parseInt(request.getParameter("MaMH"));
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/SuaCauHoiGiangVien.jsp?MaCH="+maCH+"&MaMH="+maMH+"");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
