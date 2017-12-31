<%@page import="MVCModel.DanhSachCauHoi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="MVCModel.MonHoc" %>
<%@ page import="MVCModel.ChuDe" %>
<%@ page import="MVCModel.DanhSachChuDe" %>
<%@ page import="java.util.*, java.text.*"  %>  
<%@ page import="java.util.List, java.text.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="./GV.js"></script>
    <script src="./jquery-3.2.1.min.js"></script>
   	<link rel="stylesheet" href="./styleGV.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="GVStyle.js"></script>
    <script language="javascript">
            // Hàm xử lý khi thẻ select thay đổi giá trị được chọn
            // obj là tham số truyền vào và cũng chính là thẻ select
       </script>
<title>Tao Cau Hoi</title>
</head>
<body>
	<div class="container">
	<form action="ADDCauHoiThuCong" method="get">
    	
    	<div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #66ccff; margin-bottom:20px; margin-top:20px;">
 		
            <div class="col-sm-12 col-xs-12 col-md-12">
                            <span><label>Môn Học:</label></span>
                            <select style="width: 100%" name="monhoc">
                                <c:forEach items="${DSMonHocMon}" var="monhocdemo">
                    				<option value="${monhocdemo.getMaMH()}">${monhocdemo.getTenMH()}</option>
                   				</c:forEach>
                            </select>
                            
            </div> 
        </div>
        
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #00cc66; margin-bottom:20px;">
            <div class="col-sm-6 col-xs-6 col-md-6">
            	<label>Mã CH:</label><input type="text" name="mach" id="" style="width:100%;border:1px solid black;" value="<%=DanhSachCauHoi.GetMAXMaCH()+1 %>" readonly="readonly"/>         
            </div>
            <div class="col-sm-6 col-xs-6  col-md-6" style="margin-bottom:20px;">
                            <span><label>Chủ Đề:</label></span>
                            
                            <select style="width: 100%" id="chudetheomon" name="chude">
                            	<c:forEach items="${DSChuDeMon}" var="chude">
                    				<option value="${chude.getMaCD()}">${chude.getTenChuDe()}</option>
                   				</c:forEach>

                            </select>
            </div>   
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="margin-bottom:20px;">
            <div class="col-sm-12 col-xs-12 col-md-3 col-md-offset-9">
            	<button class="btn btn-primary btn-lg active" id="">
                        Thêm Chủ Đề</button>
            </div>    
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #00cc66; margin-bottom:20px;" id="idNoiDungCauHoi">
        	<div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Nội Dung Câu Hỏi:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" name="noidung" id="" rows="2" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án A:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" name="dapanA" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án B:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control"  name="dapanB" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án C:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" name="dapanC" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án D:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" name="dapanD" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án Chính Xác:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12" style="margin-bottom: 5px;">
            	<textarea class="col-md-12 noidung form-control" name="dapan" id="" rows="1" style="width:100%;"></textarea>
            </div>	
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top:20px; margin-bottom:20px;">
            <div class="col-md-2 col-xs-6 col-sm-6 col-md-offset-10">
                <button class="btn btn-primary btn-lg active" type="submit">
                        Tạo Câu Hỏi</button>
            </div>
        </div>
        </form>
    </div>
</body>
</html>