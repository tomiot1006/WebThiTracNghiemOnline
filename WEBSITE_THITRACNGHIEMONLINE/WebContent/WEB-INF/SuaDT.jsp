<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Sửa đề thi</title>
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
									<form action="SuaDT" method="post">
										<h4 class="modal-title">Sửa thông tin đề thi</h4>

										<div class="col-xs-12">
											<label>Mã đề thi</label> <input class="form-control"
												name="maDT" placeholder="Mã đề thi" id="maDT" type="text"
												value="<%ServletContext context = getServletContext();
			out.print(context.getAttribute("maDT"));%>" />
										</div>
<div class="col-xs-12">
											<label>Mã môn học</label> <input class="form-control"
												name="maMH" placeholder="Mã môn học" id="maMH" type="text"
												value="<%ServletContext context2 = getServletContext();
			out.print(context.getAttribute("maMH"));%>" />
										</div>
<div class="col-xs-12">
											<label>Thời gian làm bài</label> <input class="form-control"
												name="thoiGianLamBai" placeholder="Phút" id="thoiGianLamBai" type="number"
												value="<%ServletContext context3 = getServletContext();
			out.print(context.getAttribute("thoiGianLamBai"));%>" />
										</div>
										<div class="col-xs-12">
											<label>Online</label> <input class="form-control"
												name="isDisable" placeholder="Online" id="isDisable" type="number"
												value="<%ServletContext context4 = getServletContext();
			out.print(context.getAttribute("isDisable"));%>" />
										</div>
										<div class="col-xs-12"><br></br></div>
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
</body>
</html>