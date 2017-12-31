package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DaoAddUser;
import Model.Account;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		try {

			int username = Integer.parseInt(request.getParameter("tendangnhap"));
			session.setAttribute("tendangnhap", username);
			String password = request.getParameter("password");
			String type = request.getParameter("gender");
			
			Account entry =new Account();
			entry.setUsername(username);
			entry.setPassword(password);
			entry.setType(type);
			DaoAddUser db = new DaoAddUser();
			if (db.CheckAccount(entry)==1) {
				if(type.equals("sinhvien"))
				{
					request.getRequestDispatcher("/WEB-INF/sinhvien.jsp").forward(request, response);
				}
				if(type.equals("admin"))
				{
					request.getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
				}
				if(type.equals("giangvien"))
				{
					request.getRequestDispatcher("giangvien.jsp").forward(request, response);
				}
				if(type.equals("nguoitaodethi"))
				{
					request.getRequestDispatcher("/WEB-INF/nguoitaodethi.jsp").forward(request, response);
				}
			}
			else
			{		
				request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
		}
	}
}
