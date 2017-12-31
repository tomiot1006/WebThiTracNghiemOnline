<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="VI">
<head>
<title>ADD MH</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background-color: powderblue;
}
</style>
</head>
<body>

	<div class="container">
		<h2>Thêm thông tin môn học</h2>
		<form class="form-horizontal" action="ThemMH" method="post">
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Tên Môn Học:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="tenmh" name="tenmh"
						placeholder="Nhập vào tên môn học">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="text">Khoa :</label>
				<div class="col-sm-10">
					<select class="form-control" style="width: 300px;" name="makhoa">
						<option value="-1">Chọn khoa</option>
						<%
				ConnectionSQL con1 = new ConnectionSQL();
				ResultSet rs = con1.chonDuLieuTuDTB("select * from dbo.Khoa ");
			
				while (rs.next()) {
			%>

						<option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>

						<%
				}
			
			%>
					</select> 
					<br>
					
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-warning">Thêm</button>
				</div>
			</div>
		</form>
	</div>
	
</body>
</html>