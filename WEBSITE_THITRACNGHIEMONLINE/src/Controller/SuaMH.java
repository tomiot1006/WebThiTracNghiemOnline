package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ConnectionSQL;

/**
 * Servlet implementation class SuaMH
 */
@WebServlet("/SuaMH")
public class SuaMH extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String tenmh="";
    int mamh=1;
    int makhoa=1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaMH() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int stt=Integer.parseInt(request.getParameter("stt"));
		mamh=stt;
		ResultSet rs;
		try {
			rs = new ConnectionSQL().chonDuLieuTuDTB("select * from MonHoc where MaMH='"+stt+"'");
			//System.out.print("xem  "+ username);
			while(rs.next()){
				tenmh=rs.getString(2);
				makhoa=rs.getInt(3);
				
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("mamh", stt);
			context.setAttribute("tenmh", tenmh);
			//context.setAttribute("khoa", khoa);
			request.getRequestDispatcher("/WEB-INF/SuaMH.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
      
			//int	mamh=1;//Integer.parseInt(request.getParameter("mamh"));
		String tenmh = request.getParameter("tenmh");
		int	makhoa=Integer.parseInt(request.getParameter("makhoa"));
		try {
			new ConnectionSQL().thucThiCauLenhSQL("update MonHoc set MaMH='"+mamh+"',TenMH='"+tenmh+"',MaKhoa='"+makhoa+"' where MaMH='"+mamh+"'");
			//System.out.print("updatethanh cong "+ username);
			request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print("loi khi them");
		}
	}

}
