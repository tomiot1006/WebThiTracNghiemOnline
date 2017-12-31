<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	<div class="container-fluid" id = "all">
		<br>
		<br>
		<br>
		
		<h2>THÊM THÔNG BÁO</h2>
		<form id="TaoThongBao" action="ThemTB" method="post">
			<div class="row">

				<div id="content" >
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
						<label>	Giảng viên</label><input type="checkbox" id="ckbGV" name="giangvienck">
						</div>
						<div class="col-xs-4">
							<label>Sinh viên<input type="checkbox" id="ckbSV" name="sinhvienck"></label>
						</div>
						<div class="col-xs-4">
							<label>	Người tạo đề thi<input type="checkbox" id="ckbntdt" name="nguoitaodethick"></label>
						</div>

					</div>

			
					<br>
					<div>
						<button type="submit" class="btn btn-primary" id="submit-button"
							value="Submit">
							<i class="fa fa-paper-plane"></i>Submit
						</button>
						
						
						<a href="" class="btn btn-danger" role="button">Cancel</a>
					</div>

				</div>

			</div>
		</form>
		
	</div>

</body>
</html>