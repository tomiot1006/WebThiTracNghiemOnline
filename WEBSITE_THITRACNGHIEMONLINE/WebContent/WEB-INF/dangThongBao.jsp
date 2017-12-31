<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>

<link rel="stylesheet" href="style.css" />
<script type="text/javascript" src="testJS.js"></script>

<script src="testJS.js"></script>

<title>Notifications</title>
</head>
<body>
	<div class="container-fluid" id="all">
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
		<form id="TaoThongBao" action="ThemTB" method="post">

			<div>
				<div class="row">
					<div id="content" class="col-xs-12 col-md-6 col-lg-8">
						<br>
						<div>
							<input class="form-control" name="tieudeThongBao"
								placeholder="Tiêu đề thông báo" id="tieudeThongBao" type="text">
						</div>
						<br>
						<div class="form-group">
							<textarea class="form-control" placeholder="Nội dung thông báo"
								name="noidungThongBao" rows="7" id="noidungThongBao"></textarea>
						</div>
						<label for="SendTo">Gởi đến :</label>

						<div class="row">
							<div class="col-xs-4">
								<label> Giảng viên</label><input type="checkbox" id="ckbGV"
									name="giangvienck">
							</div>
							<div class="col-xs-4">
								<label>Sinh viên<input type="checkbox" id="ckbSV"
									name="sinhvienck"></label>
							</div>
							<div class="col-xs-4">
								<label> Admin<input type="checkbox" id="ckbAdmin"
									name="adminck"></label>
							</div>

						</div>

						<div class="row">
							<div class="col-xs-6">
								<label><input type="checkbox" name="sendACopy"
									id="ckbCopy" checked="checked"> Gởi tôi 1 bản sao</label>
							</div>
						</div>

						<br>
						<div>
							<button type="submit" class="btn btn-primary" id="submit-button"
								value="Submit">
								<i class="fa fa-paper-plane"></i>Submit
							</button>


							<a href="dangThongBao" class="btn btn-danger" role="button">Cancel</a>
						</div>

					</div>
				</div>
			</div>
		</form>
		<div id="footer">
			<p>
			<h3>
				<pre>Đề tài web thi trắc nghiệm online - Lập trình web<br>Thành viên: Phạm Văn Tới - Phạm Minh Kế - Nguyễn Hoài Phương</pre>
			</h3>
			</p>
		</div>

	</div>

</body>
</html>