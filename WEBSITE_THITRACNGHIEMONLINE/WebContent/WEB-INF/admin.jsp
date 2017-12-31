<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>

<fmt:requestEncoding value="UTF-8" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="VI">
<head>
<title>ADMIN</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="admin.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="jquery.validate.min.js"></script>
<script type="text/javascript" src="testJS.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

<script>
$(document).ready(function(){
  $("#myInputNTDT").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTableNTDT tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<script>
$(document).ready(function(){
  $("#myInputGV").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTableGV tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<script>
$(document).ready(function(){
  $("#myInputMH").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTableMH tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>


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
input[type=text] {
	width: 130px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	width: 100%;
}

body {
	position: relative;
}

#section1 {
	padding-top: 50px;
	weight: 95%;
	height: auto;
	color: #000000;
	background-color: white;
	border-top: solid 2px black;
}

#section2 {
	padding-top: 50px;
	weight: 95%;
	height: auto;
	color: #000000;
	background-color: white;
	border-top: solid 2px black;
}

#section3 {
	padding-top: 50px;
	weight: 95%;
	height: auto;
	color: #000000;
	background-color: white;
	border-top: solid 2px black;
}

#section41 {
	padding-top: 50px;
	weight: 95%;
	height: auto;
	color: #000000;
	background-color: white;
	border-top: solid 2px black;
	height: auto;
}

#section42 {
	padding-top: 50px;
	height: auto;
	weight: 95%;
	color: #000000;
	background-color: white;
	border-top: solid 2px black;
}
</style>


</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<div class="container">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="color: white">HOCTAP.PRO.VN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class=""><a
						href="http://localhost:8080/WebThiTracNghiemOnline/home.jsp"
						style="color: white"><span class="glyphicon glyphicon-home"
							aria-hidden="true"></span>Home</a></li>
					<li><a href="#section1" style="color: white">NGƯỜI TẠO ĐỀ
							THI</a></li>
					<li><a href="#section2" style="color: white">GIẢNG VIÊN</a></li>
					<li><a href="#section3" style="color: white">SINH VIÊN</a></li>
					<li><a href="#section41" style="color: white">MÔN HỌC</a></li>
					<li><a href="#section42" style="color: white">THÔNG BÁO</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">

					<li><a href="login" style="color: white"><span
							class="glyphicon glyphicon-log-out"></span> Đăng Xuất</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>






	<div id="section1" class="container-fluid">
		<h1>NGƯỜI TẠO ĐỀ THI</h1>
		<div class="container">

			<%
				ConnectionSQL con3 = new ConnectionSQL();
				ResultSet rs3 = con3.chonDuLieuTuDTB("select ac.UserName,ac.HoTen,kh.TenKhoa,ac.NgaySinh,ac.GioiTinh,ac.CMND,ac.QueQuan,ac.HinhAnh from dbo.Account as ac,dbo.Khoa as kh where ac.MaKhoa=kh.MaKhoa and ac.Type='nguoitaodethi'");
			%>
			<input id="myInputNTDT" name="search" type="text"
				placeholder="Search.."> <br> <br> <a
				href="ThemNTDT"><button class="btn btn-success">Thêm
					Tài Khoản</button></a> <br>
			<table class="table table-bordered ">
				<thead>
					<tr>
						<th>Mã NTDT</th>
						<th>Họ Tên</th>


						<th>Ngày Sinh</th>
						<th>Giới Tính</th>
						<th>CMND</th>
						<th>Quê Quán</th>
						
						<th>Xóa</th>
						<th>Sửa</th>
					</tr>
				</thead>
				<tbody id="myTableNTDT">
					<%
						while (rs3.next()) {
					%>

					<tr>
						<td><%=rs3.getString(1)%></td>
						<td><%=rs3.getString(2)%></td>
						<td><%=rs3.getString(4)%></td>
						<td><%=rs3.getString(5)%></td>
						<td><%=rs3.getString(6)%></td>
						<td><%=rs3.getString(7)%></td>
					<td> <button type="button" class="btn btn-warning xoa" data-toggle="modal" data-target="#myModal">DELETE</button></td>
						
						<td><a href="SuaNTDT?stt=<%=rs3.getString(1)%>"><button
									class="btn btn-primary">Sửa</button></a></td>
					</tr>
				<form method="get" id="XoaNguoiTaoDe" action="#">
					    	<div id="myModal" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Xóa</h4>
						      </div>
						      <div class="modal-body">
						        <p>Bạn có đồng ý xóa câu hỏi này.</p>
						      </div>
						      
						      <div class="modal-footer">
						      	
						      	<button type="submit" name="stt" class="btn btn-primary" id="xoanguoitaode">Yes</button>
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
			</form>
					<%
						}
					%>


				</tbody>
			</table>
<script type="text/javascript">
	$(document).ready(function(e) {
			var mach;
			$('.xoa').click(function(e) {
				
				var obj=$(this);
				mach=obj.parents().parents().children().first().text();
				
			    });
			$('#xoanguoitaode').click(function(e) {
				$('#XoaNguoiTaoDe').attr("action","XoaNTDT");
				$('#xoanguoitaode').attr("value",mach);
				
		    });
			
		 });
</script>
		</div>

	</div>


	<div id="section2" class="container-fluid">
		<h1>GIẢNG VIÊN</h1>
		<div class="container">

			<%
				ConnectionSQL con2 = new ConnectionSQL();
				ResultSet rs2 = con2.chonDuLieuTuDTB("select ac.UserName,ac.HoTen,kh.TenKhoa,ac.NgaySinh,ac.GioiTinh,ac.CMND,ac.QueQuan,ac.HinhAnh from dbo.Account as ac,dbo.Khoa as kh where ac.MaKhoa=kh.MaKhoa and ac.Type='giangvien'");
			%>
			<input id="myInputGV" name="search" type="text"
				placeholder="Search.."> <br> <br> <a href="ThemGV"><button
					class="btn btn-success">Thêm Tài Khoản</button></a> <br>
			<table class="table table-bordered ">
				<thead>
					<tr>
						<th>Mã GV</th>
						<th>Họ Tên</th>
						<th>Ngày Sinh</th>
						<th>Giới Tính</th>
						<th>CMND</th>
						<th>Quê Quán</th>
					
						<th>Xóa</th>
						<th>Sửa</th>
					</tr>
				</thead>
				<tbody id="myTableGV">
					<%
						while (rs2.next()) {
					%>

					<tr>
						<td><%=rs2.getString(1)%></td>
						<td><%=rs2.getString(2)%></td>
						<td><%=rs2.getString(4)%></td>
						<td><%=rs2.getString(5)%></td>
						<td><%=rs2.getString(6)%></td>
						<td><%=rs2.getString(7)%></td>
						<td> <button type="button" class="btn btn-warning xoa1" data-toggle="modal" data-target="#myModal1">DELETE</button></td>
					
						<td><a href="SuaGV?stt=<%=rs2.getString(1)%>"><button
									class="btn btn-primary">Sửa</button></a></td>
					</tr>
<form method="get" id="XoaGiangVien" action="#">
					    	<div id="myModal1" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Xóa</h4>
						      </div>
						      <div class="modal-body">
						        <p>Bạn có đồng ý xóa câu hỏi này.</p>
						      </div>
						      
						      <div class="modal-footer">
						      	
						      	<button type="submit" name="stt" class="btn btn-primary" id="xoaginagvien">Yes</button>
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
			</form>
					<%
						}
					%>


				</tbody>
			</table>
<script type="text/javascript">
	$(document).ready(function(e) {
			var mach1;
			$('.xoa1').click(function(e) {
				
				var obj=$(this);
				mach1=obj.parents().parents().children().first().text();
				
			    });
			$('#xoaginagvien').click(function(e) {
				$('#XoaGiangVien').attr("action","XoaGV");
				$('#xoaginagvien').attr("value",mach1);
				
		    });
			
		 });
</script>
		</div>
	</div>



	<div id="section3" class="container-fluid">
		<h1>SINH VIÊN</h1>

		<div class="container">

			<%
				ConnectionSQL con1 = new ConnectionSQL();
				ResultSet rs = con1.chonDuLieuTuDTB("select ac.UserName,ac.HoTen,kh.TenKhoa,ac.NgaySinh,ac.GioiTinh,ac.CMND,ac.QueQuan,ac.HinhAnh from dbo.Account as ac,dbo.Khoa as kh where ac.MaKhoa=kh.MaKhoa and ac.Type='sinhvien'");
			%>
			<input id="myInput" name="search" type="text" placeholder="Search..">

			<br> <br> <a href="ThemSV"><button
					class="btn btn-success">Thêm Tài Khoản</button></a> <br>
			<table class="table table-bordered ">
				<thead>
					<tr>
						<th>Mã SV</th>
						<th>Họ Tên</th>
						<th>Khoa</th>
						<th>Ngày Sinh</th>
						<th>Giới Tính</th>
						<th>CMND</th>
						<th>Quê Quán</th>
						
						<th>Xóa</th>
						<th>Sửa</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<%
						while (rs.next()) {
					%>

					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td> <button type="button" class="btn btn-warning xoa2" data-toggle="modal" data-target="#myModal2">DELETE</button></td>
					
						<td><a href="SuaSV?stt=<%=rs.getString(1)%>"><button
									class="btn btn-primary">Sửa</button></a></td>
					</tr>
	<form method="get" id="XoaSinhVien" action="#">
					    	<div id="myModal2" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Xóa</h4>
						      </div>
						      <div class="modal-body">
						        <p>Bạn có đồng ý xóa câu hỏi này.</p>
						      </div>
						      
						      <div class="modal-footer">
						      	
						      	<button type="submit" name="stt" class="btn btn-primary" id="xoasinhvien">Yes</button>
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
			</form>
					<%
						}
					%>


				</tbody>
			</table>
<script type="text/javascript">
	$(document).ready(function(e) {
			var mach2;
			$('.xoa2').click(function(e) {
				
				var obj=$(this);
				mach2=obj.parents().parents().children().first().text();
				
			    });
			$('#xoasinhvien').click(function(e) {
				$('#XoaSinhVien').attr("action","XoaSV");
				$('#xoasinhvien').attr("value",mach2);
				
		    });
			
		 });
</script>
		</div>
	</div>



	<div id="section41" class="container-fluid">
		<h1>MÔN HỌC</h1>
		<div class="container">

			<%
				ConnectionSQL con4 = new ConnectionSQL();
				ResultSet rs4 = con4.chonDuLieuTuDTB("select m.MaMH,m.TenMH,k.TenKhoa From dbo.Khoa as k,dbo.MonHoc as m Where k.MaKhoa=m.MaKhoa");
			%>
			<input id="myInputMH" name="search" type="text"
				placeholder="Search.."> <br> <br> <a href="ThemMH"><button
					class="btn btn-success">Thêm Môn Học</button></a> <br>
			<table class="table table-bordered ">
				<thead>
					<tr>
						<th>Mã MH</th>
						<th>Tên MH</th>
						<th>Tên Khoa</th>
						<th>Xóa</th>
						<th>Sửa</th>
					</tr>
				</thead>
				<tbody id="myTableMH">
					<%
						while (rs4.next()) {
					%>

					<tr>
						<td><%=rs4.getString(1)%></td>
						<td><%=rs4.getString(2)%></td>
						<td><%=rs4.getString(3)%></td>
						<td> <button type="button" class="btn btn-warning xoa3" data-toggle="modal" data-target="#myModal3">DELETE</button></td>
						<td><a href="SuaMH?stt=<%=rs4.getString(1)%>"><button
									class="btn btn-primary">Sửa</button></a></td>
					</tr>
<form method="get" id="XoaMonHoc" action="#">
					    	<div id="myModal3" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Xóa</h4>
						      </div>
						      <div class="modal-body">
						        <p>Bạn có đồng ý xóa câu hỏi này.</p>
						      </div>
						      
						      <div class="modal-footer">
						      	
						      	<button type="submit" name="stt" class="btn btn-primary" id="xoamonhoc">Yes</button>
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
			</form>
					<%
						}
					%>


				</tbody>
			</table>
<script type="text/javascript">
	$(document).ready(function(e) {
			var mach3;
			$('.xoa3').click(function(e) {
				
				var obj=$(this);
				mach3=obj.parents().parents().children().first().text();
				
			    });
			$('#xoamonhoc').click(function(e) {
				$('#XoaMonHoc').attr("action","XoaMH");
				$('#xoamonhoc').attr("value",mach3);
				
		    });
			
		 });
</script>
		</div>
	</div>



	<div id="section42" class="container-fluid">
		<%
		int username42 = (int) session.getAttribute("tendangnhap");
		ConnectionSQL con42 = new ConnectionSQL();
		//int username = Integer.parseInt(session.("tendangnhap"));
		String sql42 = "select ac.UserName,ac.HoTen,kh.TenKhoa,ac.NgaySinh,ac.GioiTinh,ac.CMND,ac.QueQuan,ac.HinhAnh from dbo.Account as ac,dbo.Khoa as kh where ac.MaKhoa=kh.MaKhoa and ac.UserName="
				+ username42;
		ResultSet rs42 = con2.chonDuLieuTuDTB(sql42);
	%>
		<div class=" col-xs-12 col-sm-12">
			<h1>THÔNG BÁO</h1>
			<%
	//	int username43 = (int) session.getAttribute("tendangnhap");
		ConnectionSQL con43 = new ConnectionSQL();
		//int username = Integer.parseInt(session.("tendangnhap"));
		String sql43 = "select t.ChuDe, t.NoiDung,t.NgayGui,a.HoTen from dbo.ThongBao as t ,dbo.Account as a WHere Admin=1 and t.MaNG=a.UserName";
			//	+ username43;
		ResultSet rs43 = con43.chonDuLieuTuDTB(sql43);
	%>
			<%
					while (rs43.next()) {
				%>
			<div class="alert alert-info alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong><%=rs43.getString(1)%></strong> <br>
				<p>
					<%=rs43.getString(2)%>
				</p>
				<p class="date_time">
					Từ :<%=rs43.getString(4)%>
					Ngày đăng:
					<%=rs43.getString(3)%></p>

				</strong>
			</div>

			<%
					}
				%>

			<br>
			<%
						while (rs42.next()) {
					%>
			<a href="ThemTB"><button class="btn btn-warning">THÊM
					THÔNG BÁO</button></a>

			<%
						}
					%>
		</div>
	</div>








	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#formDemo3")
									.validate(
											{
												rules : {
													ho : "required",
													ten : "required",
													diachi : {
														required : true,
														minlength : 2
													},
													sodienthoai : {
														required : true,
														minlength : 5
													},
													password : {
														required : true,
														minlength : 5
													},
													confirm_password : {
														required : true,
														minlength : 5,
														equalTo : "#password1"
													},
													email : {
														required : true,
														email : true
													},
													dieukhoan : "required"
												},
												messages : {
													ho : "Vui lòng nhập họ",
													ten : "Vui lòng nhập tên",
													diachi : {
														required : "Vui lòng nhập địa chỉ",
														minlength : "Địa chỉ quá ngắn vậy"
													},
													sodienthoai : {
														required : "Vui lòng nhập số điện thoại",
														minlength : "Số máy quý khách vừa nhập là số không có thực"
													},
													password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự'
													},
													confirm_password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự',
														equalTo : 'Mật khẩu không trùng'
													},
													email : {
														required : "Please provide a password",
														minlength : "Your password must be at least 5 characters long",
														equalTo : "Please enter the same password as above"
													},
													email : "Vui lòng nhập Email",
													agree : "Vui lòng đồng ý các điều khoản"
												}
											});
							//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
							$("#formDemo2")
									.validate(
											{
												rules : {
													ho : "required",
													ten : "required",
													diachi : {
														required : true,
														minlength : 2
													},
													sodienthoai : {
														required : true,
														minlength : 5
													},
													password : {
														required : true,
														minlength : 5
													},
													confirm_password : {
														required : true,
														minlength : 5,
														equalTo : "#password1"
													},
													email : {
														required : true,
														email : true
													},
													dieukhoan : "required"
												},
												messages : {
													ho : "Vui lòng nhập họ",
													ten : "Vui lòng nhập tên",
													diachi : {
														required : "Vui lòng nhập địa chỉ",
														minlength : "Địa chỉ quá ngắn vậy"
													},
													sodienthoai : {
														required : "Vui lòng nhập số điện thoại",
														minlength : "Số máy quý khách vừa nhập là số không có thực"
													},
													password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự'
													},
													confirm_password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự',
														equalTo : 'Mật khẩu không trùng'
													},
													email : {
														required : "Please provide a password",
														minlength : "Your password must be at least 5 characters long",
														equalTo : "Please enter the same password as above"
													},
													email : "Vui lòng nhập Email",
													agree : "Vui lòng đồng ý các điều khoản"
												}
											});
							$("#formDemo4")
									.validate(
											{
												rules : {
													ho : "required",
													ten : "required",
													diachi : {
														required : true,
														minlength : 2
													},
													sodienthoai : {
														required : true,
														minlength : 5
													},
													password : {
														required : true,
														minlength : 5
													},
													confirm_password : {
														required : true,
														minlength : 5,
														equalTo : "#password1"
													},
													email : {
														required : true,
														email : true
													},
													dieukhoan : "required"
												},
												messages : {
													ho : "Vui lòng nhập họ",
													ten : "Vui lòng nhập tên",
													diachi : {
														required : "Vui lòng nhập địa chỉ",
														minlength : "Địa chỉ quá ngắn vậy"
													},
													sodienthoai : {
														required : "Vui lòng nhập số điện thoại",
														minlength : "Số máy quý khách vừa nhập là số không có thực"
													},
													password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự'
													},
													confirm_password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự',
														equalTo : 'Mật khẩu không trùng'
													},
													email : {
														required : "Please provide a password",
														minlength : "Your password must be at least 5 characters long",
														equalTo : "Please enter the same password as above"
													},
													email : "Vui lòng nhập Email",
													agree : "Vui lòng đồng ý các điều khoản"
												}
											});
							$("#formDemo")
									.validate(
											{
												rules : {
													ho : "required",
													ten : "required",
													diachi : {
														required : true,
														minlength : 2
													},
													sodienthoai : {
														required : true,
														minlength : 5
													},
													password : {
														required : true,
														minlength : 5
													},
													confirm_password : {
														required : true,
														minlength : 5,
														equalTo : "#password"
													},
													email : {
														required : true,
														email : true
													},
													dieukhoan : "required"
												},
												messages : {
													ho : "Vui lòng nhập họ",
													ten : "Vui lòng nhập tên",
													diachi : {
														required : "Vui lòng nhập địa chỉ",
														minlength : "Địa chỉ quá ngắn vậy"
													},
													sodienthoai : {
														required : "Vui lòng nhập số điện thoại",
														minlength : "Số máy quý khách vừa nhập là số không có thực"
													},
													password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự'
													},
													confirm_password : {
														required : 'Vui lòng nhập mật khẩu',
														minlength : 'Vui lòng nhập ít nhất 5 kí tự',
														equalTo : 'Mật khẩu không trùng'
													},
													email : {
														required : "Please provide a password",
														minlength : "Your password must be at least 5 characters long",
														equalTo : "Please enter the same password as above"
													},
													email : "Vui lòng nhập Email",
													agree : "Vui lòng đồng ý các điều khoản"
												}
											});
						});
	</script>
</body>
</html>