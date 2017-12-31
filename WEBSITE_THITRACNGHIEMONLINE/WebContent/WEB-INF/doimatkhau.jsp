<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

<title>DOI MAT KHAU</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="sinhvien.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="jquery.validate.min.js"></script>
<style type="text/css">
label {
	display: inline-block;
	width: 150px;
}

input[type="text"], input[type="password"] {
	display: inline-block;
	width: 200px;
}

label.error {
	display: inline-block;
	color: red;
	width: 200px;
}
</style>
<style>
body {
	background-color: powderblue;
}
</style>
</head>
<body>

	<div class="container">
		<h2>ĐỔI MẬT KHẨU</h2>
		<form id="formDemo" class="form-horizontal" action="DoiMK"
			method="post">



			<div class="form-group">
				<%
					ConnectionSQL con1 = new ConnectionSQL();
					int username2 = (int) session.getAttribute("tendangnhap");
					String sql2 = "select ac.UserName,ac.HoTen from Account as ac Where ac.UserName=" + username2;
					ResultSet rs2 = con1.chonDuLieuTuDTB(sql2);

					while (rs2.next()) {
				%>
				<label class="control-label col-sm-2" for="text"><%=rs2.getString(2)%></label>

				<%
					}
				%>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text"> PassWord :</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pass" name="pass"
						placeholder="Nhập vào mật khẩu cũ" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text"> Enter
					NewPass :</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="passnew1"
						name="passnew1" placeholder="Nhập vào mật khẩu cũ" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text"> ReEnter
					Pass :</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="passnew2"
						name="passnew2" placeholder="Nhập vào mật khẩu cũ" required>
				</div>
			</div>
			<div class="form-group">
				<%
					ConnectionSQL con3 = new ConnectionSQL();
					int username3 = (int) session.getAttribute("tendangnhap");
					String sql3 = "select ac.UserName,ac.HoTen from Account as ac Where ac.UserName=" + username3;
					ResultSet rs3 = con3.chonDuLieuTuDTB(sql3);

					while (rs3.next()) {
				%>

				<div class="alert alert-danger" role="alert">
				<center>
					<button type="submit" class="btn btn-warning" name="id"
						value="<%=rs3.getString(1)%>">Update</button>
						</center>
				</div>
				<%
						}
					%>

			</div>

		</form>
	</div>
	<script type="text/javascript">

    $(document).ready(function() {
        
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#formDemo").validate({
                    rules: {
                        ho: "required",
                        ten: "required",
                        pass: {
                            required: true,
                            minlength: 2
                        },
                        sodienthoai: {
                            required: true,
                            minlength: 5
                        },
                        passnew1: {
                            required: true,
                            minlength: 5
                        },
                        passnew2: {
                            required: true,
                            minlength: 5,
                            equalTo: "#passnew1"
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        dieukhoan: "required"
                    },
                    messages: {
                        ho: "Hãy kiểm tra lại!!",
                        ten: "Hãy kiểm tra lại!!",
                        diachi: {
                            required: "Hãy kiểm tra lại!!",
                            minlength: "Hãy kiểm tra lại!!"
                        },
                        sodienthoai: {
                            required: "Hãy kiểm tra lại!!",
                            minlength: "Hãy kiểm tra lại!!"
                        },
                        password: {
                            required: 'Hãy kiểm tra lại!!',
                            minlength: 'Hãy kiểm tra lại!!'
                        },
                        confirm_password: {
                            required: 'Hãy kiểm tra lại!!',
                            minlength: 'Vui lòng nhập ít nhất 5 kí tự',
                            equalTo: 'Mật khẩu không trùng'
                        },
                        email: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least 5 characters long",
                            equalTo: "Please enter the same password as above"
                        },
                        email: "Vui lòng nhập Email",
                        agree: "Vui lòng đồng ý các điều khoản"
                    }
                });
    });
    </script>
</body>
</html>