package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Connect;
import Model.DBDeThi;

@WebServlet("/SuaDT")
public class SuaDT extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int maDT,maMH,thoiGianLamBai,isDisable;
	
	public SuaDT() {
		 super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("maDT");
		ResultSet rs = new DBDeThi().getDeThiByID(id);
		try {
			while(rs.next())
			{
				maDT= rs.getInt(1);
				isDisable = rs.getInt(2);
				maMH = rs.getInt(3);
				thoiGianLamBai=rs.getInt(4);
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("maDT", maDT);
			context.setAttribute("isDisable", isDisable);
			context.setAttribute("maMH", maMH);
			context.setAttribute("thoiGianLamBai", thoiGianLamBai);
			
			request.getRequestDispatcher("WEB-INF/SuaDT.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String maDT = req.getParameter("maDT");
		String isDisable = req.getParameter("isDisable");
		String maMH = req.getParameter("maMH");
		String thoiGianLamBai = req.getParameter("thoiGianLamBai");
				
		resp.setContentType("text/html");		
		try {
			String sql = "update DeThi set isDisable = "+isDisable+
					",maMH= "+ maMH+" , thoiGianLamBai =  "
					+thoiGianLamBai+" where maDT = " + maDT +"";
			
			new Connect().thucThiCauLenhSQL(sql);			
			req.getRequestDispatcher("WEB-INF/xemDeThi.jsp").forward(req, resp);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
}
