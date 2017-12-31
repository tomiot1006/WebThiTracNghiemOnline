<?xml version="1.0" encoding="utf-8" ?>
<%@page import="Model.DBLichThi"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- <link href="https://fonts.googleapis.com/css?family=Lobster" -->
<!-- 	rel="stylesheet" type="text/css"/> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
<link rel="stylesheet" href="style.css" />

<title>Xem lịch thi</title>
</head>
<body lang="VI">
	<div class="container-fluid">
		<br> <br> <br>
					<div class="row">
						<div id="menu" class="col-xs-12">
							<ul>
								<li><a href="dispatcher">Trang chủ</a></li>

								<li><a href="dangThongBao">Đăng thông báo</a>
									<li><a href="#">Quản lý đề thi</a>
										<ul class="sub-menu">
											<li><a href="layDSDeThi">Xem các đề thi</a></li>
											<li><a href="taoDeThi">Tạo đề thi mới</a></li>

										</ul></li>
									<li><a href="#QLLichThi">Quản lý lịch thi</a>
										<ul class="sub-menu">
											<li><a href="layDSLichThi">Xem các lịch thi</a></li>
											<li><a href="taoLichThiServlet">Tạo lịch thi mới</a></li>

										</ul></li>

									<li><a href="login">Đăng xuất</a></li>
							</ul>
						</div>
					</div>
					<div>
						<div id="menu-left" class="col-xs-12  col-md-3 col-lg-2">
							<ul id="main-menuleft">
								<li><a href="TTCN">Thông tin cá nhân</a></li>
								<li><a href="#KeHoach">Kế hoạch</a></li>
								<li><a href="#DeTaiKhoaHoc">Đề tài khoa học</a></li>
								<li><a href="#ThongKeGiangDay">Thống kê giảng dạy</a></li>
								<li><a href="#HDSuDung">Hướng dẫn sử dụng</a></li>
								<li><a href="login">Thoát</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div id="content" class=" col-xs-8">
							<br>
								<h2>Danh sách lịch thi</h2>

								<table class="table table-hover">
									<thead>
										<tr>
											<th>Tên môn</th>
											<th>Ngày thi</th>
											<th>Ngày kết thúc thi</th>
											<th>Thời gian thi</th>
											<th>Thời gian kết thúc</th>
											<th>Sửa</th>
											<th>Xóa</th>
										</tr>
									</thead>
									<tbody>
										<%
											// 											ResultSet rs = (ResultSet) request.getAttribute("rs");
											DBLichThi dbdetai = new DBLichThi();
											ResultSet rs = dbdetai.getListLichThi();/*dbo.LichThi.id,dbo.MonHoc.TenMH,ngayThi,ngayKetThucThi,thoiGianThi,thoiGianKetThuc*/
										%>
										<%
											int i;
											while (rs.next()) {
										%>
										<tr>

											<td>
												<%
													out.print(rs.getString(2));
												%>
											</td>
											<td>
												<%
													out.print(rs.getString(3));
												%>
											</td>
											<td>
												<%
													out.print(rs.getString(4));
												%>
											</td>
											<td>
												<%
													out.print(rs.getTime(5));
												%>
											</td>
											<td>
												<%
													out.print(rs.getTime(6));
												%>
											</td>

											<td><a href="SuaLT?id=<%=rs.getInt(1)%>">
													<button class="btn btn-primary">Edit</button>
											</a></td>

											<td>
												<a href="XoaLT?id=<%=rs.getInt(1)%>">
													<button class="btn btn-warning">Delete</button></a>
											</td>
											

											<%
												}
											%>
										</tr>
									</tbody>
								</table>
						</div>
					</div>
	</div>
	<div id="footer">
		<p>
			Phần mềm thi trắc nghiệm online - Lập trình web<br>Thành viên:
				Phạm Văn Tới - Phạm Minh Kế - Nguyễn Hoài Phương 
		</p>
	</div>
</body>
</html>