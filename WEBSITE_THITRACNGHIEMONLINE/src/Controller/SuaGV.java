package Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ConnectionSQL;

/**
 * Servlet implementation class SuaGV
 */
@WebServlet("/SuaGV")
public class SuaGV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 String hoten="";
	   
	    String ngaysinh="";
	    String gioitinh="";
	    String cmnd="";
	    String quequan="";
	    String hinhanh="";
	    int username=1;
	    public SuaGV() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			int stt=Integer.parseInt(request.getParameter("stt"));
			username=stt;
			ResultSet rs;
			try {
				rs = new ConnectionSQL().chonDuLieuTuDTB("select * from Account where UserName='"+stt+"'");
				//System.out.print("xem  "+ username);
				while(rs.next()){
					hoten=rs.getString(3);
					ngaysinh=rs.getString(5);
					gioitinh=rs.getString(6);
					cmnd=rs.getString(7);
					quequan=rs.getString(8);
					hinhanh=rs.getString(9);
					
				}
				response.setContentType("text/html");
				ServletContext context = getServletContext();
				context.setAttribute("UserName", stt);
				context.setAttribute("hoten", hoten);
			
				context.setAttribute("ngaysinh", ngaysinh);
				context.setAttribute("gioitinh", gioitinh);
				context.setAttribute("cmnd", cmnd);
				context.setAttribute("quequan", quequan);
				context.setAttribute("hinhanh", hinhanh);
				
				
				request.getRequestDispatcher("/WEB-INF/SuaGV.jsp").forward(request, response);
				
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
			
			 if(request.getParameter("txtPhoto") == null)
	         {
	             response.sendRedirect("upload.jsp");
	             return;
	         }
	         PrintWriter out = response.getWriter();

	         FileInputStream input = null;
	         File theFile = new File(request.getParameter("txtPhoto"));
	        // input = new FileInputStream(theFile);
	        // out.println("FullPathname" + " " + theFile.getAbsolutePath());
	        // System.out.print(theFile.getAbsolutePath());
	         
	         
			String hoten = request.getParameter("hoten");
			int khoa = 1;
			String khoahoc ="null";
			String ngaysinh = request.getParameter("ngaysinh");
			String cmnd = request.getParameter("cmnd");
			String quequan = request.getParameter("quequan");
			String hinhanh = theFile.getAbsolutePath();
			System.out.println(hinhanh);
			String gioitinh = request.getParameter("gioitinh");
			
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			String stt=(String) context.getAttribute("stt");
			
			
			try {
				new ConnectionSQL().thucThiCauLenhSQL("update Account set UserName='"+username+"',HoTen='"+hoten+"',MaKhoa='"+khoa+"',NgaySinh='"+ngaysinh+"',GioiTinh='"+gioitinh+"',CMND='"+cmnd+"',QueQuan='"+quequan+"',HinhAnh='"+hinhanh+"' where UserName='"+username+"'");
				//System.out.print("updatethanh cong "+ username);
				request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}

}
