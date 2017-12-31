<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Connect"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Model.DAL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.DBDeThi"%>
<!DOCTYPE html>
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
<script src="validation.js"></script>
<link rel="stylesheet" href="style.css" />

<title>Noticfications</title>
</head>
<body>

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
				<div class="col-xs-12">
					<h4 class="well">Thông tin cá nhân</h4>
					<%
						ResultSet rs = (ResultSet) request.getAttribute("rs");
					%>
					<%
						if (rs.next()) {
					%>
					<p>
						<label>Họ tên:</label>
						<%
							out.print(rs.getString(3));
						%>
					</p>

					<p>
						<label>Mã khoa:</label>
						<%
							out.print(rs.getInt(4));
						%>
					</p>
					<p>
						<label>Ngày sinh:</label>
						<%
							out.print(rs.getString(5));
						%>
					</p>
					<p>
						<label>Giới tính:</label>
						<%
							out.print(rs.getString(6));
						%>
					</p>
					<p>
						<label>Số CMND:</label>
						<%
							out.print(rs.getString(7));
						%>
					</p>
					<p>
						<label>Quê quán:</label>
						<%
							out.print(rs.getString(8));
						%>
					</p>
					<%
						}
					%>
				</div>
				<div class="col-xs-12">
					<br> <br> <br>
				</div>


				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">
					<i class="fa fa-paper-plane"></i>Edit
				</button>
				</a>
				<!--  -->

				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<form action="SuaTTCN" method="get">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Sửa thông tin cá nhân</h4>
								</div>

								<div class="modal-body">
									<div>
										<div class="col-xs-4">
											<label>Họ tên:</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" placeholder="Họ và tên"
												name="editname" id="editname" type="text"
												value="<%out.print(rs.getString(3));%>">

										</div>
									</div>
									<br> <br>

									<div>
										<div class="col-xs-4">
											<label>Mã khoa:</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" name="editmakhoa" id="editmakhoa"
												type="number" value="<%out.print(rs.getInt(4));%>">

										</div>
									</div>
									<br> <br>
									<div>
										<div class="col-xs-4">
											<label>Ngày sinh:</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" name="editngaysinh"
												id="editngaysinh" type="date"
												value="<%out.print(rs.getString(5));%>">
										</div>
									</div>
									<br> <br>

									<div>
										<div class="col-xs-4">
											<label>Giới tính:</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" placeholder="Giới tính"
												id="editgioitinh" name="editgioitinh" type="text"
												value="<%out.print(rs.getString(6));%>">
										</div>
									</div>
									<br> <br>
									<div>
										<div class="col-xs-4">
											<label>CNMD:</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" placeholder="CMND" id="editcmnd"
												name="editcmnd" type="text"
												value="<%out.print(rs.getString(7));%>">
										</div>
									</div>
									<br> <br>
									<div>
										<div class="col-xs-4">
											<label>Quê quán:</label>
										</div>
										<div class="col-xs-8">
											<input class="form-control" placeholder="Quê quán"
												id="editquequan" name="editquequan" type="text"
												value="<%out.print(rs.getString(8));%>">
										</div>
									</div>
									<br> <br>
								</div>
								<br> <br>
								<div class="modal-footer">
									<a href="SuaTTCN">
										<button class="btn btn-success">Edit</button>
									</a>

								</div>
							</div>
						</form>
					</div>
				</div>

				<!--  -->

				<a href="TTCN" class="button btn btn-danger">Cancel</a>
			</div>
		</div>
		<div id="footer">
			<p>
			<h3>
				<pre>Phần mềm thi trắc nghiệm online - Lập trình web<br>Thành viên:   Phạm Văn Tới - Phạm Minh Kế - Nguyễn Hoài Phương</pre>
			</h3>
			</p>
		</div>

	</div>
</body>
</html>