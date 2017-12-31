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

import MVCModel.CauHoi;
import MVCModel.DanhSachCauHoi;
import MVCModel.DanhSachMonHoc;
import MVCModel.MonHoc;

@WebServlet("/TVTaoCauHoi")
public class TroVeChiTietTaoCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public TroVeChiTietTaoCauHoi() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maMH=Integer.parseInt(request.getParameter("MaMH"));
		List<CauHoi> danhsachCH= null;
		try {
			danhsachCH= DanhSachCauHoi.GetDSCauHoiTheoMon(maMH);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		getServletContext().setAttribute("danhsachCH", danhsachCH);
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/TaoCauHoiGiangVienOL.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
