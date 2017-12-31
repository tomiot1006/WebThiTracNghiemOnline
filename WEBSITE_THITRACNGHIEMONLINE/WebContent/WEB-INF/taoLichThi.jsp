<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Model.DBDeThi"%>
<%@page import="Model.DAL"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
<script type="text/javascript" src="taoLichThi.js"></script>
<title>Tạo lịch thi mới</title>
<script type="text/javascript">


</script>
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
						<br>
							<div id="content" class=" col-xs-8">
								<br>
									<form id="formTaoLichThi" action="themLichThi" method="post" lang="VI">
										
										<div class="col-xs-12">
<!-- 											<label>Mã môn thi</label> <input class="form-control" -->
<!-- 												name="maMon" placeholder="Mã môn thi" id="maMon" type="text" /> -->
											<label>Tên môn thi</label>
											<sql:setDataSource var="result"
												driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
												url="jdbc:sqlserver://localhost:1433; instance=SQLEXPRESS; databaseName= WebThiTracNghiem; user=sa; password=123;" />

											<sql:query dataSource="${result}" var="result1">
         							SELECT * from dbo.MonHoc;
     							 </sql:query>
											<select id="maMon" class="col-md-12" name="maMon"
												title="Danh sách môn học">
												<c:forEach var="row" items="${result1.rows}">
													<option value="${row.MaMH }">
														<c:out value="${row.TenMH}" /></option>
												</c:forEach>
											</select>



										</div>
										
										<div class="col-xs-6">
											<label>Ngày thi</label> <input type="date"
												class="form-control" id="ngayThi" name="ngayThi"/> <br>
										</div>
										<div class="col-xs-6">
											<label>Ngày kết thúc thi</label> <input type="date"
												class="form-control" id="ngayKetThucThi" name="ngayKetThucThi" /> <br>
										</div>
										
										<div class="col-xs-6">
											<label>Thời gian thi</label> <input type="time"
												class="form-control" id="thoiGianThi" name="thoiGianThi"/>
											<br>
										</div>
										<div class="col-xs-6">
											<label>Thời gian kết thúc thi</label> <input type="time"
												class="form-control" id="thoiGianKetThuc" name="thoiGianKetThuc"/>
											<br>
										</div>
										
										<div class="col-xs-12">
											<button type="submit" class="btn btn-primary"
												id="submit-button" value="Submit">
												<i class="fa fa-paper-plane"></i>Submit
											</button>
											<button type="reset" class="btn btn-danger"
												id="cancel-button" value="Cancel">
												<i class="fa"></i>Cancel
											</button>
										</div>
									</form>
							</div>
					</div>
	</div>

	<div id="footer">
		<p><h3>Phần mềm thi trắc nghiệm online - Lập trình web<br>Thành viên:   Phạm Văn Tới - Phạm Minh Kế - Nguyễn Hoài Phương</h3></p>
	</div>
</body>
</html>