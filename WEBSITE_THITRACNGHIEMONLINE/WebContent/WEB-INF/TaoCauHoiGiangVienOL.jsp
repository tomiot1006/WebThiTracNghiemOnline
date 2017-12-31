<%@ page import="MVCModel.CauHoi" %>
<%@ page import="MVCModel.DanhSachCauHoi" %>
<%@ page import="java.util.*, java.text.*"  %>  
<%@ page import="java.util.*, java.text.*"  %>  
<%@ page import="java.util.List, java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   	<link rel="stylesheet" href="./styleGVTN.css"/>
    <script src="GVStyle.js"></script>
    <script type="text/javascript">
		  $(document).ready(function(e) {
		        $('#btnTaoCauHoiThuCong').on('click',function(e){
		        	window.location="./LoadTaoCauHoiThuCong";
					});
		    });  
			$(document).ready(function(e) {
		      $('#btnTaoCauHoiFile').on('click',function(e){
		      	window.open("./TaoCauHoiFile.jsp");
		      	//window.location="./TaoCauHoiFile.jsp";
					});
		  });
			$(document).ready(function(){
			    $('.search').on('keyup',function(){
			        var searchTerm = $(this).val().toLowerCase();
			        $('#userTbl tbody tr').each(function(){
			            var lineStr = $(this).text().toLowerCase();
			            if(lineStr.indexOf(searchTerm) === -1){
			                $(this).hide();
			            }else{
			                $(this).show();
			            }
			        });
			    });
			    
			});
			$(document).ready(function(e) {
 				var mach;
 				$('.xoa').click(function(e) {
 					
 					var obj=$(this);
 					mach=obj.parents().parents().children().first().text();
 					
         		    });
 				$('#xoach').click(function(e) {
 					
 					
 					$('#XoaCauHoi').attr("action","DeLeteCauHoi");
 					$('#xoach').attr("value",mach);
 					
 					
     		    });
     			
     		 });
    </script>
<title>Giang Vien</title>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed" role="navigation">
		<div class="container-fluid">
        	<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="./anhdemo.jpg" style="width:inherit; height:inherit;"/></a>
            </div>
           
            <div class="collapse navbar-collapse">
            
         		<ul class="nav navbar-nav">
                	<li><a href="ThemMucDoc">TRANG CHỦ</a></li>
                    <li><a href="./DangThongBaoGiangVien">ĐĂNG THÔNG BÁO</a></li>
                    <li>
                    
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">QUẢN LÝ NGÂN HÀNG VÀ TẠO CÂU HỎI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                        	<c:forEach items="${DSMonHoc}" var="monhocdemo">
                    			<li><a href="LoadTaoCauHoi?MaMH=${monhocdemo.getMaMH()}"><span>${monhocdemo.getTenMH()}</span></a></li>
                    			<li class="divider"></li>
                   			</c:forEach>
                         	
                         </ul>
                    </li>
                    
                    <li>
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">QUẢN LÝ SINH VIÊN THI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                         <c:forEach items="${DSMonHoc}" var="monhocdemo">
                    			<li><a href="QuanLySinhVienThi.jsp?MaMH=${monhocdemo.getMaMH()}"><span>${monhocdemo.getTenMH()}</span></a></li>
                    			<li class="divider"></li>
                   			</c:forEach>
                       </ul>
                    </li>
                    
                    <li>
                    	<button type="button" class="btn btn-primary btn-lg active" style="margin-left:50px;"
                    	 >Thoát</button>
                    </li>
                    
                </ul>
                
            </div>
            
        </div>
        
    </div>
    <!--MENU LEFT-->
    <div class="col-md-2 menu-left menuleft" style="width:auto;">
        <ul class="main-menuleft">
            <li><a href="GiangVienTNOL.jsp"><i class="glyphicon glyphicon-home" style="padding:15px;"></i>Trang Của Bạn</a></li>
            <li><a href="./ThongTinCaNhan" name="clickme" id="idThongTinGiangVien" ><i class="glyphicon glyphicon-user" style="padding:15px;"></i>Thông Tin Cá Nhân</a></li>
            <li><a href="./LoadDMK" name="clickme" id="idDoiMKMenuLeft"><i class="fa fa-pencil-square" style="padding:15px;"></i>Đổi Mật Khẩu</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-remove" style="padding:15px;"></i>Thoát</a></li>
        </ul>
	</div>
    <!--MENU CenTer-->
    <div class="col-md-9 menu-center" id="menu-center">
       <div id="menu-centerthongbao" class="col-md-12">
			<span><i class="fa fa-pencil-square-o" style="padding:15px;"></i>Tạo Câu Hỏi</span>
        </div>
        <div class="col-md-12 menu-center thongtincanhan" id="menu-centernoidung">
        	
            <form class="col-md-12 col-xs-12 col-sm-12" style="width:100%" style="margin-bottom:20px;" action="LoadTaoCauHoiThuCong" method="get">
            
            	<div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #33cc33; margin:20px 0px;">
                	<div class="col-sm-12 col-xs-12 col-md-12" style="margin-bottom: 20px;">
                        <span><label>Môn Học:</label></span>
                        <select id="idChonMonHoc">
                        	<c:forEach items="${DSMonHoc}" var="monhocdemo">
                    			 <option  value="${monhocdemo.getMaMH()}">${monhocdemo.getTenMH()}</option>
                   			</c:forEach>
                        
                        </select>
                     	<script type="text/javascript">
                   
                     		$(document).ready(function(e) {
                     			$('#idChonMonHoc').change(function(e) {
                     				var maMH=document.getElementById("idChonMonHoc").value;
                     				
                     				 $.ajax({
                             			url : 'LayDanhSachCauHoi',
                             			data : {
                             				maMH : maMH
                             			},
                             			success :  function(responseJson) {
                             				
                             				$("#userTbl tbody").html("");
                             				$.each(responseJson, function(index, cauhoi) { 
                             					 $("<tr>").appendTo("#userTbl").attr('class',"onRow")                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
                             	                .append($("<td>").text(cauhoi.MaCH))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
                             	               .append($("<td>").text(cauhoi.NoiDung))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
                             	              .append($("<td>").append($("<a>").attr('href',"ChiTietTaoCauHoi?MaCH="+cauhoi.MaCH+"&MaMH="+cauhoi.MaMH+"").attr('class',"fa fa-search")))
                             	              .append($("<td>").append($("<a>").attr('href',"LoadSuaTaoCauHoi?MaCH="+cauhoi.MaCH+"&MaMH="+cauhoi.MaMH+"").attr('class',"fa fa-pencil-square-o")))
                             	              .append($("<td>").append($("<a>").attr('href',"#").attr('class',"fa fa-remove xoa").attr('data-target',"#myModal1").attr('data-toggle',"modal")));
                             	      			  
                             		        });
                            				
                            			}
                             		});
                                   
                     		    });
                     		});
                     		 
                     	</script>
                     	   
                    </div>
				<p id="demo"></p>
                </div>
                <%
                	int maMH=Integer.parseInt(request.getParameter("MaMH"));

        		request.getSession().setAttribute("MaMHTaoCauHoi",maMH);
        		List<CauHoi> danhsachCH= null;
        		danhsachCH= DanhSachCauHoi.GetDSCauHoiTheoMon(maMH);
        		getServletContext().setAttribute("danhsachCH", danhsachCH);
                %>
               	<div class="col-md-2 col-md-offset-5 col-xs-12 col-sm-12" style="margin-bottom:20px;">
                     	<button class="btn btn-primary btn-lg active" type="submit" name="TaoCHThuCong" value="1" text-align: center;">
                        <span>Tạo Thủ Công</span></button>
                </div>
                <div class="col-md-2 col-md-offset-1 col-xs-12 col-sm-12" style="margin-bottom:20px;">
                     	<button class="btn btn-primary btn-lg active " name="TaoCHThuCong" value="2">
                        <span>Tạo Bằng File</span></button>
                </div>
                <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top:40px; margin-bottom:20px; border:1px solid #33cc33;">
                	<div class="col-md-3 col-xs-3 col-sm-3" style="margin:10px 0px;">
                        <button class="btn btn-primary btn-lg active" id="" style="height:27px;" disabled="disabled">
                        <label style="margin-top:-10px;">Tìm Kiếm</label></button>
                     </div>
                     
                	<div class="col-md-9 col-md-9 col-xs-9 col-sm-9" style="margin:10px 0px;">
                    	<input type="text" class="search form-control" class="form-group pull-right" id="timkiemNHCH" style="width:100%;border:1.5px solid black;"/>
                    </div>
                    
                </div>
                <table class="table table-striped table-condensed table-bordered" id="userTbl" style="width:100%; border:3px solid black" id="TableCauHoi">
					    <thead>
					    <tr>
					      <th>Mã CH</th>
					      <th>Tên Câu Hỏi</th>
					      <th>Chi Tiết</th>
					      <th>Sửa</th>
					      <th>Xóa</th>
					    </tr>
					    </thead>
					    <tbody>
						   
							
		                	<c:forEach items="${danhsachCH}" var="cauhoitheomon">
	                    		<tr class="onRow">
									<td>${cauhoitheomon.getMaCH()}</td><td>${cauhoitheomon.getNoiDung()}</td>
									<td><a  href="ChiTietTaoCauHoi?MaCH=${cauhoitheomon.getMaCH()}&MaMH=${cauhoitheomon.getMaMH()}"><i class="fa fa-search"></i></a></td>
									<td><a href="LoadSuaTaoCauHoi?MaCH=${cauhoitheomon.getMaCH()}&MaMH=${cauhoitheomon.getMaMH()}"><i class="fa fa-pencil-square-o"></i></a></td>
									<td><a  href="#" data-toggle="modal" data-target="#myModal1" class=" fa fa-remove xoa" ></a></td>
								</tr>
							
                   			</c:forEach>
					    </tbody>
					   	 
				</table>
                
            </form>
            <form method="get" id="XoaCauHoi" action="#">
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
						      	
						      	<button type="submit" name="MaCH" class="btn btn-primary" id="xoach">Yes</button>
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
			</form>
							
						  </div>
						</div>  
            <%
    	
		    	String SuaTaoCH=(String)request.getSession().getAttribute("SuaTaoCH");
		    	System.out.print("ffff"+SuaTaoCH);
		    	
		    %>
		    <%
		                    if(SuaTaoCH=="0")
		                	{
		                		%>
		                		<script type="text/javascript">
		                			alert("Sửa Câu Hỏi Thất Bại");
		                		</script>
		                		<% 
		                			request.getSession().removeAttribute("SuaTaoCH");
		                		%>
		                	<%	
		                	}
		                    %>
		                    <%
						    	if(SuaTaoCH=="1")
						    	{
						    		%>
						    	<script type="text/javascript">
		                			alert("Sửa Câu Hỏi Thành Công.");
		                		</script>
		                		<% 
		                			request.getSession().removeAttribute("SuaTaoCH");
		                		%>
		                		<% 
			}%>
        </div>
    </div>
    
    </div>
    <!--Footer-->
    <div id="idfooter" class="col-md-12 footer" style="background-color: #edf2f5; margin: 20px 0px;">
	    <div class="col-md-6 col-md-offset-1" style="margin-top: 20px; margin-bottom: 10px;">
	    	<span style="color: #3399ff; font-size: 18px;">TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM</span><br/> 
			<span>Số 1 Võ Văn Ngân , Quận Thủ Đức, TP.HCM</span><br/> 
			<span>Điện thoại: (84-8) 37221223</span>
	    </div>
	    <div class="col-md-4" style=" margin-top: 20px; margin-bottom: 10px;">
	    	<span>©2017 Đại học Sư Phạm Kỹ Thuật thành phố Hồ Chí Minh</span><br/> 
			<span>Design by:</span><span style="font-weight: bold;">Phương Nguyễn</span><br/> 
			<span>Điện thoại: 0964824963</span>
	    </div>
    </div>
</body>
</html>