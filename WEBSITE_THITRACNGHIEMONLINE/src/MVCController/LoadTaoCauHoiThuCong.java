package MVCController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVCModel.DanhSachMonHoc;
import MVCModel.MonHoc;

@WebServlet("/LoadTaoCauHoiThuCong")
public class LoadTaoCauHoiThuCong extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoadTaoCauHoiThuCong() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int KTTaoCHThuCong=Integer.parseInt(request.getParameter("TaoCHThuCong"));
		
		
		if(KTTaoCHThuCong==1)
		{
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/TaoCauHoiThuCong.jsp");
		dispatcher.forward(request, response);
		}
		if(KTTaoCHThuCong==2)
		{
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/TaoCauHoiFile.jsp");
		dispatcher.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
