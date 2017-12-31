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
import javax.servlet.http.HttpSession;

import MVCModel.DanhSachMonHoc;
import MVCModel.GiangVien;
import MVCModel.LayThongTinGiangVien;
import MVCModel.MonHoc;
import MVCModel.CauHoi;
import MVCModel.DanhSachCauHoi;


@WebServlet("/LoadGV")
public class LoadGV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoadGV() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username1="1";
		request.getSession().setAttribute("UserName", username1);
		int username=Integer.parseInt(username1);
		List<MonHoc> DSMonHoc = null; 
		// dsmd;
		//DanhSachMucDo dsmd=new DanhSachMucDo();
		try {
			DSMonHoc=DanhSachMonHoc.GetDSMonHocGVDay((int)username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getServletContext().setAttribute("DSMonHoc", DSMonHoc);				
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/GiangVienTNOL.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
