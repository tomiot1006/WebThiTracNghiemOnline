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

import Model.DBLichThi;
import Model.Connect;
@WebServlet("/SuaLT")
public class SuaLT extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int maMon;
	String ngayThi,ngayKetThucThi;
	String thoiGianThi;
	String thoiGianKetThuc;
		
    public SuaLT() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		ResultSet rs = new DBLichThi().getLichThiByID(id);
		try {
			while(rs.next())
			{
				maMon=rs.getInt(2);
				ngayThi=rs.getString(3);
				ngayKetThucThi=rs.getString(4);
				thoiGianThi=rs.getString(5);
				thoiGianKetThuc=rs.getString(6);
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("id", id);
			context.setAttribute("maMon", maMon);
			context.setAttribute("ngayThi", ngayThi);
			context.setAttribute("ngayKetThucThi", ngayKetThucThi);
			context.setAttribute("thoiGianThi", thoiGianThi);
			context.setAttribute("thoiGianKetThuc", thoiGianKetThuc);
			request.getRequestDispatcher("WEB-INF/SuaLT.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String maMon = req.getParameter("maMon");
		String ngayThi = req.getParameter("ngayThi");
		String ngayKetThucThi = req.getParameter("ngayKetThucThi");
		String thoiGianThi = req.getParameter("thoiGianThi");
		String thoiGianKetThuc = req.getParameter("thoiGianKetThuc");
		
		resp.setContentType("text/html");
		ServletContext context = getServletContext();
		String id = (String) context.getAttribute("id");
		
		try {
			String sql = "update LichThi set maMon="+maMon+",ngayThi ='"+ngayThi+
					"',ngayKetThucThi='"+ ngayKetThucThi+"', thoiGianThi = '"
					+thoiGianThi+"',thoiGianKetThuc='"+thoiGianKetThuc+"' where id =" + id +"";
			
			new Connect().thucThiCauLenhSQL(sql);			
			req.getRequestDispatcher("WEB-INF/xemLichThi.jsp").forward(req, resp);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
