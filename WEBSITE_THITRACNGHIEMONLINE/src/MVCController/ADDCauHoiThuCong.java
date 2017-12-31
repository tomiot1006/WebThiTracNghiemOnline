package MVCController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVCModel.DanhSachCauHoi;

@WebServlet("/ADDCauHoiThuCong")
public class ADDCauHoiThuCong extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ADDCauHoiThuCong() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int MaMonHoc=Integer.parseInt(request.getParameter("monhoc"));
		int MaCH=Integer.parseInt(request.getParameter("mach"));
		int MaChuDe=Integer.parseInt(request.getParameter("chude"));
		String NoiDung=request.getParameter("noidung");
		String DapAnA=request.getParameter("dapanA");
		String DapAnB=request.getParameter("dapanB");
		String DapAnC=request.getParameter("dapanC");
		String DapAnD=request.getParameter("dapanD");
		String DapAn=request.getParameter("dapan");
		int t=0;
		request.getSession().removeAttribute("SuaTaoCH");
		t=DanhSachCauHoi.InsertCauHoi(MaCH, MaMonHoc, MaChuDe, NoiDung, DapAnA, DapAnB, DapAnC, DapAnD, DapAn);
		if(t>0)
		{
			
			RequestDispatcher dispatcher=	request.getRequestDispatcher("./LoadTaoCauHoi?MaMH="+MaMonHoc+"");
			dispatcher.forward(request, response);
		}
		else
		{
			request.getSession().setAttribute("TaoCHTC", "0");
			RequestDispatcher dispatcher=	request.getRequestDispatcher("./WEB-INF/TaoCauHoiThuCong.jsp");
			dispatcher.forward(request, response);
		}
		System.out.println("sasa");
		System.out.println(MaMonHoc);
		System.out.println(MaCH);
		System.out.println(MaChuDe);
		System.out.println(NoiDung);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
