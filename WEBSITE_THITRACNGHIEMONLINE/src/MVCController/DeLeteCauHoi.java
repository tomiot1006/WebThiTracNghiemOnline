package MVCController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVCModel.DanhSachCauHoi;

@WebServlet("/DeLeteCauHoi")
public class DeLeteCauHoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeLeteCauHoi() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int MaCH=Integer.parseInt(request.getParameter("MaCH"));
		System.out.println("AAAAAAAAAAAAAAAAA");
		int MaMH = 0;
		try {
			MaMH = DanhSachCauHoi.GetMaMH(MaCH);
			System.out.println(MaMH);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DanhSachCauHoi.DeleteCauHoi(MaCH);
		RequestDispatcher dispatcher=	request.getRequestDispatcher("./LoadTaoCauHoi?MaMH="+MaMH+"");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
