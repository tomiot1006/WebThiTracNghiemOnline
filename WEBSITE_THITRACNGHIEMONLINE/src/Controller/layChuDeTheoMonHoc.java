package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAL;
import Model.DBDeThi;



@WebServlet("/layChuDeTheoMonHoc")
public class layChuDeTheoMonHoc extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public layChuDeTheoMonHoc() {
        super();      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String MaMH = request.getParameter("ChonMH");	
		String thoiGianLamBai = request.getParameter("thoiGianLamBai");
		
		DAL dal = new DAL();
		String sql=	"INSERT INTO dbo.DeThi VALUES( 0, " + MaMH +","+thoiGianLamBai+")";	
		 try {
			dal.thucThiSQL(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DBDeThi dbdetai =new DBDeThi();
	
		ResultSet rs = dbdetai.getChuDeTheoMonHoc(MaMH);/* láº¥y Ä‘c cÃ¡c chá»§ Ä‘á»� theo mÃ´n há»�c Ä‘Æ°á»£c chá»�n*/
		
		request.setAttribute("rs", rs);	
		
		ResultSet rsCauHoiTheoMonHoc = dbdetai.layCauHoiTheoMonHoc(MaMH);/*láº¥y cÃ¡c cÃ¢u há»�i theo mÃ´n há»�c -- chÆ°a sá»­ dá»¥ng*/
		
		request.setAttribute("rsCauHoiTheoMonHoc", rsCauHoiTheoMonHoc); 	/*lay danh sach cau hoi theo mon hoc*/
		
		
		
		request.getRequestDispatcher("WEB-INF/chonChuDeVaCauHoi.jsp").forward(request, response);		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		doGet(req, resp);
	}
	
	
}
