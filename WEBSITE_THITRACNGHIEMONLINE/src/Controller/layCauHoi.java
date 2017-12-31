package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/layCauHoi")
public class layCauHoi extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public layCauHoi() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
	SELECT DISTINCT  dbo.CauHoi.NoiDung,dbo.CauHoi.DapAnA,dbo.CauHoi.DapAnB,dbo.CauHoi.DapAnC,dbo.CauHoi.DapAnD,dbo.CauHoi.DapAn
 FROM dbo.CauHoi JOIN dbo.ChuDe ON ChuDe.MaCD = CauHoi.MaCD JOIN dbo.MonHoc ON MonHoc.MaMH = dbo.CauHoi.MaMH
WHERE (dbo.CauHoi.MaCD = 1 OR CauHoi.MaCD=2 OR CauHoi.MaCD = 3) AND dbo.MonHoc.TenMH = N'Máº¡ng mÃ¡y tÃ­nh' 
		 * */
		/*
		 * Chá»�n tÃªn mÃ´n há»�c tá»« DropdownList ra Ä‘Æ°á»£c mÃ´n há»�c
		 * Chá»�n chá»§ Ä‘á»� tá»« <li>
		 * gÃ¡n 2 giÃ¡ trá»‹ vÃ o cÃ¢u truy váº¥n
		 * lÆ°u káº¿t quar cÃ¢u truy váº¥n vÃ o ResultSet
		 * Trang hiá»ƒn thá»‹ láº¥y thÃ´ng tin tá»« RS hiá»ƒn thá»‹ ra cho ngÆ°á»�i dÃ¹ng thi
		 * */
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}	
	
	
	
}
