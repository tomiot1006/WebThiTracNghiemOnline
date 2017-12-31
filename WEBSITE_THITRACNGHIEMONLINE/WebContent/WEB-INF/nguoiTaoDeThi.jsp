
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet" type="text/css">
<!-- Bootstrap Liblary -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>CreateTest</title>

<link rel="stylesheet" href="style.css" />

<!-- -->
<style>
</style>
</head>

<body>

	<div class="container-fluid">
		<div id="header">
			<h3 class="tieu-de">
				Xin chào : Bạn đăng nhập với chức năng <strong>Người tạo đề
					thi</strong>
			</h3>
		</div>
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
			<div id="content" class="col-xs-12 col-md-6 col-lg-8">
				<!-- noi dung cua thong bao, tuy chinh thuc hien show hoac an -->
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Người gửi</th>
							<th>Chủ đề</th>
							<th>Nội dung</th>
							<th>Ngày gửi</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Thầy hiệu trưởng</td>
							<td>Thông báo Kế hoạch thi học kỳ</td>
							<td>Trưởng phòng các bộ môn thực hiện việc tạo đề thi, lịch
								thi cho Sinh viên thực hiện việc thi cuối kì</td>
							<td>15/11/2017</td>
						</tr>
						<tr>
							<td>Thư ký</td>
							<td>Nâng cấp cơ sở vật chất</td>
							<td>Các phòng học khu A B C sẽ được gắn máy lạnh</td>
							<td>16/11/2017</td>
						</tr>
						<tr>
							<td>Ban bảo vệ</td>
							<td>Sinh viên cảnh giác</td>
							<td>Các sinh viên toàn trường tự giữ gìn đồ đạc cẩn thận
								trước tình trạng trộm cắp hoành hành.</td>
							<td>16/11/2017</td>
						</tr>
						<tr>
							<td>Thư ký</td>
							<td>Nghỉ tết dương lịch</td>
							<td>Các sinh viên toàn trường được nghỉ ngày 01/01/2018.
								Chúc các em có 1 ngày tết vui vẻ bên gia đình</td>
							<td>16/11/2017</td>
						</tr>

					</tbody>
				</table>

			</div>


			<div id="menu-right" class="col-xs-12 col-md-3	 col-lg-2">
				<div class="thongbao col-md-12">
					<div class="tieudethongbao col-md-12">
						<p style="text-align: center; color: #17538c; font-weight: bold;">THÔNG
							BÁO</p>
					</div>
					<marquee onmouseover="this.stop()" onmouseout="this.start()"
						scrollamount="2" direction="down" width="100%" height="205"
						align="center" style="border: 2px solid #edf2f5;">

						Hội nghị APEC diễn ra tại Việt Nam <a href="google.com">APEC.com
						</a><br> Việt Nam sắp trở thành Quốc gia phát triển <a
							href="google.com">VietNamNet.com</a><br> Thông báo mới<br>
					</marquee>
					<div class="tieudethongbao col-md-12">
						<p style="text-align: center; color: #17538c; font-weight: bold;">SỰ
							KIỆN</p>
					</div>
					<marquee onmouseover="this.stop()" onmouseout="this.start()"
						scrollamount="2" direction="down" width="100%" height="205"
						align="center" style="border: 2px solid #edf2f5;">
						Hội nghị APEC diễn ra tại Việt Nam <a href="google.com">APEC.com
						</a><br> Việt Nam sắp trở thành Quốc gia phát triển <a
							href="google.com">VietNamNet.com</a><br>
					</marquee>

				</div>
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
