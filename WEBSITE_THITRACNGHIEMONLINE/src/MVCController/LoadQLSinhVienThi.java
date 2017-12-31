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

@WebServlet("/LoadQLSinhVienThi")
public class LoadQLSinhVienThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoadQLSinhVienThi() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/QuanLySinhVienThi.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
