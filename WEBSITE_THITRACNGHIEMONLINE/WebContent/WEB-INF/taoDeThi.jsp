<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Model.DBDeThi"%>
<%@page import="Model.DAL"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="VI">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet" type="text/css" />
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
<script src="validation.js"></script>
<link rel="stylesheet" href="style.css" />
<script type="text/javascript" src="taoDeThi.js"></script>
<title>Tạo đề thi</title>
<script src="jquery-3.2.1.min.js"></script>

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
					
						<div class="row">

							<div id="content" class="col-xs-8">

								<!-- 	------------------------------ Lấy danh sách các môn học từ DB ----------------------------->
								<sql:setDataSource var="result"
									driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
									url="jdbc:sqlserver://localhost:1433; instance=SQLEXPRESS; databaseName= WebThiTracNghiem; user=sa; password=123;" />

								<sql:query dataSource="${result}" var="result1">
         							SELECT * from dbo.MonHoc;
     							 </sql:query>
								<div>
									<form action="layChuDeTheoMonHoc" method="get"><!-- lấy đc môn thi, gửi yêu cầu đến trang chọn chủ đề -->
										<select id="ChonMH" class="col-md-12" name="ChonMH"
											title="Danh sách môn học">
											<c:forEach var="row" items="${result1.rows}">
												<option value="${row.MaMH }">
													<c:out value="${row.TenMH}" /></option>
											</c:forEach>
										</select> <br></br>
										
										<!-- 	------------------------------ Set thời gian cho đề thi          ---------------------------    -->
									<div>
										<div class="col-xs-2">
											<label>Thời gian làm bài</label>
										</div>
										<div class="col-xs-4">
											<input class="form-control" name="thoiGianLamBai"
												placeholder=" phút " id="thoiGianLamBai" type="number" /><br></br>
										</div>
									</div>
										<br></br>
										<div class="col-xs-12">
										<button class="btn btn-primary btn-md" type="submit"
											id="btnSubmit" value="Submit">Submit</button>

										<a href="taoDeThi.jsp" type="button"
											class="btn btn-danger btn-md" id="cancel-button">Cancel</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

</body>
</html>