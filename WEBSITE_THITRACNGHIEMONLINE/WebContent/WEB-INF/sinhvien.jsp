<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

<title>SINH VIEN</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="sinhvien.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="jquery.validate.min.js"></script>
<style type="text/css">
#formDemo {
	background: #9FF;
}

label {
	display: inline-block;
	width: 150px;
}

input[type="text"], input[type="password"] {
	display: inline-block;
	width: 200px;
}

label.error {
	display: inline-block;
	color: red;
	width: 200px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

		$('#showthongtincanhan').hide();
		$('#showthongbao').show();
		$('#showhinhanh').show();
		$('#showdiem').hide();
		$('#showlichthi').hide();

		$('a#thongtincanhan').click(function() {
			$('#showthongbao').hide();
			$('#showdiem').hide();
			$('#showthongtincanhan').show();
			$('#showlichthi').hide();
		})
		$('a#thongbao').click(function() {
			$('#showthongbao').show();
			$('#showdiem').hide();
			$('#showthongtincanhan').hide();
			$('#showlichthi').hide();
		})
		$('a#xemdiemthi').click(function() {
			$('#showthongbao').hide();
			$('#showthongtincanhan').hide();
			$('#showdiem').show();
			$('#showlichthi').hide();
		})
		$('a#xemlichthi').click(function() {
			$('#showthongbao').hide();
			$('#showthongtincanhan').hide();
			$('#showdiem').hide();
			$('#showlichthi').show();
		})
	});
</script>

</head>
<body>
	<%
		int username2 = (int) session.getAttribute("tendangnhap");
		ConnectionSQL con2 = new ConnectionSQL();
		//int username = Integer.parseInt(session.("tendangnhap"));
		String sql2 = "select ac.UserName,ac.HoTen,kh.TenKhoa,ac.NgaySinh,ac.GioiTinh,ac.CMND,ac.QueQuan,ac.HinhAnh from dbo.Account as ac,dbo.Khoa as kh where ac.MaKhoa=kh.MaKhoa and ac.UserName="
				+ username2;
		ResultSet rs2 = con2.chonDuLieuTuDTB(sql2);
	%>
	<div class="container">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="color: white">HOCTAP.PRO.VN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class=""><a
						href="home"
						style="color: white"><span class="glyphicon glyphicon-home"
							aria-hidden="true"></span>Home</a></li>
					<li><a
						href="VaoThi"
						style="color: white"><span class="glyphicon glyphicon-pencil"
							aria-hidden="true"></span>Vào thi</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" style="color: white"><span
							<%while (rs2.next()) {%> class="glyphicon glyphicon-user"></span>
							<%=rs2.getString(2)%></a></li>
					<%
						}
					%>
					<li><a href="login" style="color: white"><span
							class="glyphicon glyphicon-log-out"></span> Đăng Xuất</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>

	<div class="container">
		<div id="BlockBody">

			<div class="col-sm-2 col-xs-12">
				<strong>XIN CHÀO !</strong>
				<hr width="90%" align="left" />
				<div
					style="border: 0.1px solid #CEA97C; box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0 rgba(0, 0, 0, 0.19);">
					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="thongtincanhan" href="#" style="text-decoration: none">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>Thông
							Tin Cá Nhân
						</a>
					</p>
					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="thongbao" href="#" style="text-decoration: none"> <span
							class="glyphicon glyphicon-bell" aria-hidden="true"></span>Thông
							Báo
						</a>
					</p>
					<hr style="width: 100%; color: #CEA97C; margin: 0">

					<hr style="width: 100%; color: #CEA97C; margin: 0">
				</div>
				<div
					style="border: 0.1px solid black; box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 1px 0 rgba(0, 0, 0, 0.1); margin-top: 30px">
					<hr style="width: 100%; color: #CEA97C; margin: 0">
					<p style="padding: 10px; margin: 0" class="hover_xam">
						<button type="button" class="btn btn-info btn-sm">
							<a href="VaoThi" style="color: white"><span
								class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Vào
								thi</a>
						</button>
					</p>
					<hr style="width: 100%; color: #CEA97C; margin: 0">
					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="xemdiemthi" href="#" style="text-decoration: none"> <span
							class="glyphicon glyphicon-user" aria-hidden="true"></span>Xem
							điểm
						</a>
					</p>
					<hr style="width: 100%; color: #CEA97C; margin: 0">
					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="xemlichthi" href="#" style="text-decoration: none"> <span
							class="glyphicon glyphicon-user" aria-hidden="true"></span>Xem
							lịch thi
						</a>
					</p>
					<hr style="width: 100%; color: #CEA97C; margin: 0">

					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="doimatkhau" href="DoiMatKhau"> <span
							class="glyphicon glyphicon-flag" aria-hidden="true"></span>
							Đổi mật khẩu
						</a>
					</p>
					<hr style="width: 100%; color: #CEA97C; margin: 0">
					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="huongdansudung" href="#" style="text-decoration: none">
							<span class="glyphicon glyphicon-book" aria-hidden="true"></span>Hướng
							Dẫn Sử Dụng
						</a>
					</p>
					<hr style="width: 100%; color: #CEA97C; margin: 0">
					<p style="padding: 10px; margin: 0" class="hover_xam"
						style="text-decoration: none">
						<a id="thoat" href="login"
							style="text-decoration: none"> <span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span>Thoát
						</a>
					</p>
				</div>
			</div>


			<div id="showthongbao" class="col-sm-9 col-xs-12">
				<hr width="100%" style="color: #B4ACA1" class="visible-xs">
				<strong>THÔNG BÁO MỚI</strong>
				<hr width="90%" align="left" />

				<%
					int username4 = (int) session.getAttribute("tendangnhap");
					ConnectionSQL con4 = new ConnectionSQL();
					//int username = Integer.parseInt(session.("tendangnhap"));
					String sql4 = "select t.ChuDe, t.NoiDung,t.NgayGui,a.HoTen from dbo.ThongBao as t ,dbo.Account as a WHere SinhVien=1 and t.MaNG=a.UserName";
					ResultSet rs4 = con4.chonDuLieuTuDTB(sql4);
				%>


				<%
					while (rs4.next()) {
				%>
				<div class="alert alert-info alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<strong><%=rs4.getString(1)%></strong> <br>
					<p>
						<%=rs4.getString(2)%>
					</p>
					<p class="date_time">
						Từ :<%=rs4.getString(4)%>
						Ngày đăng:
						<%=rs4.getString(3)%></p>

					
				</div>

				<%
					}
				%>


			</div>
			<div id="showthongtincanhan" class="col-sm-9 col-xs-12">
				<%
					int username1 = (int) session.getAttribute("tendangnhap");
					ConnectionSQL con1 = new ConnectionSQL();
					//int username = Integer.parseInt(session.("tendangnhap"));
					String sql = "select ac.UserName,ac.HoTen,kh.TenKhoa,ac.NgaySinh,ac.GioiTinh,ac.CMND,ac.QueQuan,ac.HinhAnh from dbo.Account as ac,dbo.Khoa as kh where ac.MaKhoa=kh.MaKhoa and ac.UserName="
							+ username1;
					ResultSet rs1 = con1.chonDuLieuTuDTB(sql);
					String sqldiem="select m.TenMH,b.Diem from MonHoc as m,BangDiem as b where m.MaMH=b.MaMH and b.MaSV="+username1;
					ResultSet rsdiem = con1.chonDuLieuTuDTB(sqldiem);
				%>
				<form>
					<fieldset>
						<div class="alert alert-danger">
							<strong>Thông Tin Cá Nhân</strong>
						</div>
						<%
							while (rs1.next()) {
						%>

						<div class="alert alert-success">
							<img src="<%=rs1.getString(8)%>"
								style="width: 150px; height: 150px;">
						</div>
						<div class="alert alert-warning">
							<strong><span class="glyphicon glyphicon-lock"
								aria-hidden="true"></span>Mã SV:</strong>
							<%=rs1.getString(1)%>.
						</div>

						<div class="alert alert-info">
							<strong><span class="glyphicon glyphicon-user"
								aria-hidden="true"></span>Họ Tên:</strong>
							<%=rs1.getString(2)%>
						</div>
						<div class="alert alert-success">
							<strong><span class="glyphicon glyphicon-book"
								aria-hidden="true"></span>Khoa:</strong>
							<%=rs1.getString(3)%>
						</div>
						<div class="alert alert-danger">
							<strong><span class="glyphicon glyphicon-gift"
								aria-hidden="true"></span>Ngày Sinh:</strong>
							<%=rs1.getString(4)%>
						</div>

						<div class="alert alert-warning">
							<strong><span class="glyphicon glyphicon-heart-empty"
								aria-hidden="true"></span>Giới Tính:</strong><%=rs1.getString(5)%>.
						</div>

						<div class="alert alert-info">
							<strong><span class="glyphicon glyphicon-qrcode"
								aria-hidden="true"></span>Số CMND:</strong>
							<%=rs1.getString(6)%>.
						</div>
						<div class="alert alert-success">
							<strong><span class="glyphicon glyphicon-tree-deciduous"
								aria-hidden="true"></span>Quê Quán:</strong>
							<%=rs1.getString(7)%>
						</div>
						<%
							}
						%>
					</fieldset>
				</form>
			</div>

			<!--Show diem -->
			<div id="showdiem" class="col-sm-9 col-xs-12">
				<div class="alert alert-info" role="alert">
					<h2>Bảng điểm</h2>
					<table class="table">
						<thead>
							<tr>
								<th>Môn học</th>
								
								<th>Điểm Thi</th>

							</tr>
						</thead>
						<tbody>
						<%
							while (rsdiem.next()) {
						%>
							<tr>
								<td><%=rsdiem.getString(1)%></td>
								<td><%=rsdiem.getString(2)%></td>
							</tr>
							<%
							}
						%>

						</tbody>
					</table>
				</div>

			</div>

			<div id="showlichthi" class="col-sm-9 col-xs-12">
				<div class="alert alert-danger" role="alert">
					<strong><h2>LỊCH THI</h2></strong>
				</div>
				<%
					int username = (int) session.getAttribute("tendangnhap");
					ConnectionSQL con = new ConnectionSQL();
					//int username = Integer.parseInt(session.("tendangnhap"));
					String sql1 = "select l.id, m.TenMH,l.ngayThi,l.ngayKetThucThi,l.thoiGianThi,l.thoiGianKetThuc from dbo.LichThi as l,dbo.MonHoc as m,HocTap as h  Where l.maMon=m.MaMH AND h.MaMH=l.maMon AND h.MaHV="
							+ username;
					ResultSet rs = con.chonDuLieuTuDTB(sql1);
				%>
				<div class="alert alert-info" role="alert">
					<table class="table">
						<thead>
							<tr>
								<th>Môn Học</th>
								<th>Ngày Thi</th>
								<th>Ngày Kết Thúc</th>
								<th>Thời Gian Bắt Đầu</th>
								<th>Thời Gian Kết Thúc</th>
								
							</tr>
						</thead>
						<tbody>
							<%
								while (rs.next()) {
							%>

							<tr>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(3)%></td>
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(5)%></td>
								<td><%=rs.getString(6)%></td>
							
							</tr>

							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>