<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="Model.ConnectionSQL"%>
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8" />
<!-- để định dạng độ rộng màn hình để xử lí-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Bài làm</title>
<!--Tích hợp bộ CSS của Bootstrap-->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="bailam.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script
	src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js"
	type="text/javascript"></script>
<title>BÀI LÀM</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
span {
	border: solid 1px #ACACAC;
	padding: 2px;
}

#dethi {
	border-top-left-radius: 40px;
	border-top-right-radius: 0;
	border-bottom-right-radius: 40px;
	border-bottom-left-radius: 0;
	border-style: solid;
	border-width: medium;
}
</style>
<style>
// /** CSS căn id pagination ra giữa màn hình **/
//
#pagination {
	display: flex;
	display: -webkit-flex; /* Safari 8 */
	flex-wrap: wrap;
	-webkit-flex-wrap: wrap; /* Safari 8 */
	justify-content: center;
	-webkit-justify-content: center;
}
</style>
<script language="javascript">
	var h = null; // Giờ
	var m = null; // Phút
	var s = null; // Giây

	var timeout = null; // Timeout
	$(document).ready(function() {
		$('#showdethi').hide();
		$('#dongho').hide();
		$('button#batdau').click(function() {
			$('#showdethi').show();
		})
	});
	function start() {
		$('#showdethi').show();
	}

	function stop() {
		clearTimeout(timeout);
	}
</script>
</head>
<body>
	<div class="container">
		<div class="alert alert-warning alert-dismissible" role="danger">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<%
				int username2 = (int) session.getAttribute("tendangnhap");
				int stt = Integer.parseInt(request.getParameter("stt"));
				ConnectionSQL con = new ConnectionSQL();
				//int username = Integer.parseInt(session.("tendangnhap"));
				String sql = "select c.NoiDung,c.DapAnA,c.DapAnB,c.DapAnC,c.DapAnD,c.DapAn,c.MaCH,q.MaDT from question as q ,Dethi as d ,CauHoi as c where  q.MaCH=c.MaCH and d.MaMH=c.MaMH AND q.MaDT=d.MaDT and q.MaDT="
						+ stt;
				ResultSet rs = con.chonDuLieuTuDTB(sql);
				String sql2 = "select * From DeThi where MaDT=" + stt;
				ResultSet rs2 = con.chonDuLieuTuDTB(sql2);
				String sql3 = "select * From DeThi where MaDT=" + stt;
				ResultSet rs3 = con.chonDuLieuTuDTB(sql3);
			%>
			<strong>THỜI GIAN LÀM BÀI:</strong>
			<div >
				<center>
					<%
						while (rs3.next()) {
					%>
					<div id="dongho">
					<input type="text" id="h_val" placeholder="Giờ" value="0" /> Giờ <input
						type="text" id="m_val" placeholder="Phút"
						value="<%=rs3.getString(4)%>" /> Phút <input type="text"
						id="s_val" placeholder="Giây" value="0" />Giây
						</div>
					<%
						}
					%>
				</center>
				<div>
					<center>
						<span style="font-size: 30px"  id="h">Giờ</span> : <span
							style="font-size: 30px"  id="m">Phút</span> : <span
							style="font-size: 30px"  id="s">Giây</span>
					</center>
				</div>

			</div>
			<br>
			<div>
				<center>
					<button id="batdau" type="button" class="btn btn-warning"
						value="Start" onclick="start()">Làm Bài</button>
				</center>
			</div>

		</div>

	</div>
	<div class="container">
		<div id="showdethi">


			<form id="form" action="TinhDiem" method="post">

				<%
					int j = 1;
					while (rs.next()) {
				%>
				<div id="dethi" class="contentPage">
					<h2 id="<%=j%>">
						Câu
						<%=j%>:
					</h2>
					<center>
						<strong><%=rs.getString(1)%></strong>
						<div class="radio">
							<label><input type="radio" name="<%=rs.getString(7)%>"
								value="a"><%=rs.getString(2)%></label> <label><input
								type="radio" name="<%=rs.getString(7)%>" value="b"><%=rs.getString(3)%></label><br>
							<label><input type="radio" name="<%=rs.getString(7)%>"
								value="c"><%=rs.getString(4)%></label> <label><input
								type="radio" name="<%=rs.getString(7)%>" value="d"><%=rs.getString(5)%></label>
						</div>
				</div>
				<br>
				<%
					j++;
					}
				%>


				<center>
					<ul id="pagination"></ul>
				</center>
				<div class="alert alert-danger" role="alert">
					<center>
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#myModal">Nộp Bài</button>
					</center>
				</div>


				<!-- The Modal -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Good Luck</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">Bạn Có Chắc Muốn Nộp Bài</div>

							<!-- Modal footer -->
							<div class="modal-footer">

								<%
									while (rs2.next()) {
								%>
								<center>
									<button id="submit" type="submit" class="btn btn-warning"
										name="stt2" value="<%=rs2.getString(1)%>"
										class="btn btn-secondar">OK</button>
								</center>

								<%
									}
								%>
							</div>

						</div>
					</div>
				</div>



			</form>
		</div>
	</div>


	<script>
		function start() {
			/*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
			if (h === null) {
				h = parseInt(document.getElementById('h_val').value);
				m = parseInt(document.getElementById('m_val').value);
				s = parseInt(document.getElementById('s_val').value);
			}

			/*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
			// Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
			//  - giảm số phút xuống 1 đơn vị
			//  - thiết lập số giây lại 59
			if (s == -1) {
				m -= 1;
				s = 59;
			}

			// Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
			//  - giảm số giờ xuống 1 đơn vị
			//  - thiết lập số phút lại 59
			if (m == -1) {
				h -= 1;
				m = 59;
			}

			// Nếu số giờ = -1 tức là đã hết giờ, lúc này:
			//  - Dừng chương trình
			if (h == -1) {
				clearTimeout(timeout);
				alert('Hết giờ 1');
				$('form').submit();
				return false;
			}

			/*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
			document.getElementById('h').innerText = h.toString();
			document.getElementById('m').innerText = m.toString();
			document.getElementById('s').innerText = s.toString();

			/*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
			timeout = setTimeout(function() {
				s--;
				start();
			}, 1000);
		}
	</script>
	<script type="text/javascript">
		$(function() {
			var pageSize = 1; // Hiển thị 6 sản phẩm trên 1 trang
			showPage = function(page) {
				$(".contentPage").hide();
				$(".contentPage").each(function(n) {
					if (n >= pageSize * (page - 1) && n < pageSize * page)
						$(this).show();
				});
			}
			showPage(1);
			///** Cần truyền giá trị vào đây **///
			var totalRows =
	<%=j - 1%>
		; // Tổng số sản phẩm hiển thị
			var btnPage = 3; // Số nút bấm hiển thị di chuyển trang
			var iTotalPages = Math.ceil(totalRows / pageSize);

			var obj = $('#pagination').twbsPagination({
				totalPages : iTotalPages,
				visiblePages : btnPage,
				onPageClick : function(event, page) {
					console.info(page);
					showPage(page);
				}
			});
			console.info(obj.data());
		});
	</script>
</body>
</html>