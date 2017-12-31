<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- để định dạng độ rộng màn hình để xử lí-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Vào thi</title>
<!--Tích hợp bộ CSS của Bootstrap-->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="vaothi.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>


<style type="text/css">
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


<style>
input[type=text] {
	width: 130px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	width: 100%;
}
</style>
<script>
	$(document).ready(
			function() {
				$("#myInputNTDT").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTableNTDT tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
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
		<!--Tao MENU -->

		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar=header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>

				</button>
				<a class="navbar-brand" href="#" style="color: white">HOCTAP.PRO.VN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">

				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input id="myInputNTDT" name="search" type="text"
							placeholder="Search..">
					</div>

				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" style="color: white"><span
							<%while (rs2.next()) {%> class="glyphicon glyphicon-user"></span>
							<%=rs2.getString(2)%></a></li>
					<%
						}
					%>

				</ul>
			</div>
		</div>
		</nav>

		<div class="alert alert-danger">
			<marquee behavior="alternate">
				<strong>Danh Sách Lịch Thi</strong>
			</marquee>

		</div>
		<div class="alert alert-info">
			<%
					int username = (int) session.getAttribute("tendangnhap");
					ConnectionSQL con = new ConnectionSQL();
					//int username = Integer.parseInt(session.("tendangnhap"));
					String sql = "select l.id, m.TenMH,l.ngayThi,l.ngayKetThucThi,l.thoiGianThi,l.thoiGianKetThuc,d.MaDT from dbo.LichThi as l,dbo.MonHoc as m,HocTap as h,DeThi as d  Where l.maMon=m.MaMH AND h.MaMH=l.maMon and m.MaMH=d.MaMH AND d.MaMH=l.maMon AND h.MaHV="
							+ username;
					ResultSet rs = con.chonDuLieuTuDTB(sql);
				%>
			<table class="table table-bordered ">
				<thead>
					<tr>
						<th>Good Luck</th>
						<th>Môn Học</th>
						<th>Vào Thi</th>

					</tr>
				</thead>
				<tbody id="myTableNTDT">
					<%
								while (rs.next()) {
							%>

					<tr>
						<td><img src="C:\Users\PMK QN VN\Pictures\Mkdd_star.jpg"
							style="width: 80px; height: 80px;"></td>
						<td><%=rs.getString(2)%></td>

						<td><a href="LamBai?stt=<%=rs.getString(7)%>"><button
									class="btn btn-warning">Làm Bài</button></a></td>

					</tr>

					<%
								}
							%>
				</tbody>
			</table>
		</div>


	</div>
</body>
</html>