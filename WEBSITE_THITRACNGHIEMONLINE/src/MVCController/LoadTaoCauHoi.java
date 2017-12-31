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

import MVCModel.CauHoi;
import MVCModel.ChuDe;
import MVCModel.DanhSachCauHoi;
import MVCModel.DanhSachChuDe;
import MVCModel.DanhSachMonHoc;
import MVCModel.MonHoc;


@WebServlet("/LoadTaoCauHoi")
public class LoadTaoCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoadTaoCauHoi() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		List<CauHoi> DSCauHoi = null; 
//		// dsmd;
//		//DanhSachMucDo dsmd=new DanhSachMucDo();
//		try {
//			DSCauHoi=DanhSachCauHoi.GetDSCauHoi();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		getServletContext().setAttribute("DSCauHoi", DSCauHoi);
		//request.getSession().removeAttribute("SuaTaoCH");
		 response.setContentType("text/html");


		String user =(String) request.getSession().getAttribute("UserName");
		System.out.println("SASASAS"+user);
		int maMH=Integer.parseInt(request.getParameter("MaMH"));
		List<CauHoi> danhsachCH= null;
		try {
			danhsachCH= DanhSachCauHoi.GetDSCauHoiTheoMon(maMH);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<MonHoc> DSMonHocMon = null; 
		// dsmd;
		//DanhSachMucDo dsmd=new DanhSachMucDo();
		try {
			DSMonHocMon=DanhSachMonHoc.GetMonHocTheoMon(maMH);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getServletContext().setAttribute("DSMonHocMon", DSMonHocMon);
		getServletContext().setAttribute("danhsachCH", danhsachCH);
		List<ChuDe> dsChuDe =null;
    	try {
			dsChuDe=DanhSachChuDe.GetDSChuDe(maMH);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	getServletContext().setAttribute("DSChuDeMon", dsChuDe);
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/TaoCauHoiGiangVienOL.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
