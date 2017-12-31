<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="VI">
<head>
<title>ADD NTDT</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
  function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $('#blah')
        .attr('src', e.target.result)
        .width(150)
        .height(200);
    };
    reader.readAsDataURL(input.files[0]);
  }
}
</script>
<style>
body {
	background-color: powderblue;
}
</style>
</head>
<body>

	<div class="container">
		<h2>Thêm thông tin thành viên</h2>
		<form class="form-horizontal" action="ThemNTDT" method="post">
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Họ Tên:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hoten" name="hoten"
						placeholder="Nhập vào họ tên">
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Ngày Sinh:</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="ngaysinh"
						name="ngaysinh" placeholder="Nhập vào ngày sinh">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Giới Tính:</label>
				<div class="col-sm-10">
					<input type="radio" name="gioitinh" value="nam" checked=""> Nam<br>
                      <input type="radio" name="gioitinh" value="nu"> Nữ <br>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Số CMND:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="cmnd" name="cmnd"
						placeholder="Nhập vào số CMND">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Quê Quán:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="quequan" name="quequan"
						placeholder="Nhập vào Quê Quán">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="text">Link Image :</label>
				<div class="col-sm-10">
					 <input type='file' name="txtPhoto"
						onchange="readURL(this);" id="myFile"
						accept="image/gif, image/jpeg, image/png" /> <br> <img
						id="blah" src="#" alt="your image" />

					<p id="demo" name="demo"></p>
					<button type="button" onclick="myFunction()" class="btn btn-info">Xác
						Nhận</button>

				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-warning">Thêm</button>
				</div>
			</div>
		</form>
	</div>
	<script>
function myFunction() {
    var x = document.getElementById("myFile").value;
    document.getElementById("demo").innerHTML = x;
}
</script>
</body>
</html>