<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Model.DBDeThi"%>
<%@page import="Model.cauHoi"%>
<%@page import="Model.cauHoiDAL"%>
<%@page import="Model.DAL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

<title>Taọ đề thi</title>
</head>
<body>

	<div class="container-fluid">
		<br><br><br>
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
					<div>
						<div class="row">
							<div id="content" class="col-xs-8">

								<!-- Pass data to Create Test ------------------------------------ -->
								<form action="createTest" method="get">

									<%
										ResultSet rs = (ResultSet) request.getAttribute("rs");
									%>
									<%
										if (rs.next()) {
									%>
									<!-- kiểm tra rs có trả ra kết quả hay không -->
									<div class=" class="col-xs-12"">
										<div class="col-xs-2">
											<label>Tên môn thi</label>
										</div>
										<div class=" col-xs-10">
											<input class="form-control" name="TenMH" id="TenMH"
												readonly="readonly" type="text"
												value="<%out.print(rs.getString(4));%>" />
										</div>
									</div>
									<div class=" class="col-xs-12"">
										<div class="col-xs-2">
											<label>Mã môn</label>
										</div>
										<div class=" col-xs-10">
											<input class="form-control" name="MaMH" id="MaMH" type="text"
												readonly="readonly" value="<%out.print(rs.getString(3));%>" />
										</div>
									</div>
									<%
										rs.previous(); /* lùi con trỏ của rs về 1 đơn vị đằng trước để rs đọc hết các chủ đề trong DB*/
										/*sử dụng trong DAL để lùi câu hỏi*/
										}
									%>

									<table class="table table-hover">

										<thead>
											<tr>
												<th width="80%">Chủ đề</th>
												<th width="20%">Số câu hỏi</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											<%  %>
												<%
													while (rs.next()) {
														/*con trỏ rs đã đc reset về đẩu cột*/
												%>
												<tr>
													<td><input class="form-control"
														name="CD<%out.print(rs.getInt(2));%>"
														readonly="readonly" type="text"
														value="<%out.print(rs.getString(1));%>" /></td>
													<td><input id="SoCauHoi"
														name="<%out.print(rs.getInt(2));%>" value="0"
														type="number" class="form-control"
														placeholder="Số câu hỏi"></input></td>
												</tr>
												<%
													}
												%>
											</tr>

										</tbody>
									</table>

									<!-- 	------------------------------Chọn ra chủ đề có trong môn học          --------------------------- -->



									<div class="col-xs-12">
										<button type="submit" name="btnTaoDeThi"
											class="btn btn-primary btn-md" id="submit-button"
											value="Submit">
											<i class="fa fa-paper-plane"></i>Submit
										</button>
										<a href="chonChuDeVaCauHoi.jsp" type="button"
											class="btn btn-danger btn-md" id="cancel-button">Cancel</a>
									</div>
								</form>
							</div>
						</div>
					</div> </br> </br> </br>
	</div>
</body>
</html>