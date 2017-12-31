package MVCController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import MVCModel.CauHoi;
import MVCModel.DanhSachCauHoi;
import MVCModel.DanhSachMonHoc;
import MVCModel.MonHoc;

@WebServlet("/LayDanhSachCauHoi")
public class LayDanhSachCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LayDanhSachCauHoi() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maMH=Integer.parseInt(request.getParameter("maMH"));
		
		String greetings = "Hello"+maMH;
		List<CauHoi> danhsachCH= null;
		try {
			danhsachCH= DanhSachCauHoi.GetDSCauHoiTheoMon(maMH);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    String json = new Gson().toJson(danhsachCH);

	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
