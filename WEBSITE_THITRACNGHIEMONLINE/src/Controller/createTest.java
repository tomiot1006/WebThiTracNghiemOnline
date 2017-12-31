package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.DAL;
import Model.DBDeThi;

@WebServlet("/createTest")
public class createTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public createTest() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String TenMH = request.getParameter("TenMH");
		String MaMH = request.getParameter("MaMH");
		String TenCD = "CD"; /* cáº§n truyá»�n TenCD tá»« trang chonCD vÃ  cÃ¢u há»�i vÃ o Ä‘Ã¢y ??????*/
		String MaCD="";
		DAL dal = new DAL();		
		DBDeThi dbDT = new DBDeThi();
		
		ResultSet rsChuDeTheoMonHoc = dbDT.getChuDeTheoMaMH(TenMH);	/*SELECT TenCD,MaCD : 8,10,11			*/		
		ResultSet soLuongChuDe = dbDT.demSoLuongChuDe(MaMH);		/*SELECT COUNT(*)			*/		
		try {
			soLuongChuDe.next();
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		
		int count = 1;
		try {
			count = soLuongChuDe.getInt(1);/*Ä‘áº¿m sá»‘ lÆ°á»£ng chá»§ Ä‘á»� theo mÃ´n há»�c	*/
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			int soCauHoi = 0;
			//while(rsChuDeTheoMonHoc.next())/* láº¥y tá»«ng chá»§ Ä‘á»� cá»§a mÃ´n há»�c Ä‘Ã³*/
			{
				for(int i =	1	;	i	<= count;	i++)
				{
					/*soCauHoi = Integer.parseInt(request.getParameter(Integer.toString(i)));
					/*thÃªm dÃ²ng nÃ y
					 * */
					rsChuDeTheoMonHoc.next();
					String temp = Integer.toString(rsChuDeTheoMonHoc.getInt(2));
					soCauHoi = Integer.parseInt(request.getParameter(temp));

					
					if(soCauHoi > 0)
					{
				
						TenCD=request.getParameter("CD".concat(temp));	
						MaCD =temp;
						
						
						ResultSet rsSoCauHoiRanDom = dbDT.randomQuestion(soCauHoi, MaMH,MaCD);/*láº¥y Ä‘c sÃ³ cÃ¢u há»�i theo mÃ´n há»�c*/
						ResultSet rsMaDT = dbDT.layMaDeThi(MaMH);
						rsMaDT.next();
						
						while(rsSoCauHoiRanDom.next())
						{							
							int MaDT = rsMaDT.getInt(1);
							String sql = "INSERT INTO dbo.Question VALUES("+MaDT+" , "+ rsSoCauHoiRanDom.getInt(1)+")";
							dal.thucThiSQL(sql);
						}
					}
					soCauHoi =0;
					
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ResultSet rs= dbDT.getListDeThi();
		request.setAttribute("rs", rs);
		request.getRequestDispatcher("WEB-INF/xemDeThi.jsp").forward(request, response);	

	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
