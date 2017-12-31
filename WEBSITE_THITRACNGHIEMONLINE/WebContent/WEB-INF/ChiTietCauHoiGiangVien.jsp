<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="MVCModel.CauHoi" %>
<%@ page import="MVCModel.DanhSachCauHoi" %>
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
    <link rel="stylesheet" href="./styleGV.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="GVStyle.js"></script>
<title>Tao Cau Hoi</title>
	
</head>
<body>
	<div class="container">
		 <%
	        	
		       
				int maCH=Integer.parseInt(request.getParameter("MaCH"));
		 		String maMH=request.getParameter("MaMH");
	        	//List<CauHoi> CTCauHoi = null; 
				CauHoi cauhoi=null;
				cauhoi=DanhSachCauHoi.GetCauHoi(maCH);
				String TenMH=DanhSachCauHoi.GetTenMH(maCH);
				String TenCD=DanhSachCauHoi.GetTenCD(maCH);
				//CTCauHoi.add(cauhoi);
				//getServletContext().setAttribute("CTCauHoi", CTCauHoi);
	        	
	      %>
	    <form action="./LoadTaoCauHoi" method="get">
    	<div class="col-md-2 col-md-offset-10" style="margin-top:10px;">
            	<button class="w3-button w3-blue"  style="height:27px;" type="submit" name="MaMH" value="<%=maMH%>">Trở Về
            	</button>
        </div>
        
    	<div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #66ccff; margin-bottom:20px; margin-top:20px;">
 
            <div class="col-sm-12 col-xs-12 col-md-12">
                            <span><label>Môn Học:</label></span>
                            <select disabled="disabled" style="width: 100%">
                                <option><%=TenMH %></option>
                            </select>
                            
            </div>  
        </div>
        
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #00cc66; margin-bottom:20px;">
            <div class="col-sm-6 col-xs-6 col-md-6">
            	<label>Mã CH:</label><input type="text" class="" id="" style="width:100%;border:1px solid black;" value="<%=cauhoi.getMaCH() %>" disabled="disabled"/>         
            </div>
            <div class="col-sm-6 col-xs-6  col-md-6" style="margin-bottom:20px;">
                            <span><label>Chủ Đề:</label></span>
                            
                            <select disabled="disabled" style="width: 100%">
                                <option><%=TenCD %></option>
                            </select>
            </div>   
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #00cc66; margin-bottom:20px;">
        	<div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Nội Dung Câu Hỏi:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="2" style="width:100%;"><%=cauhoi.getNoiDung() %></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án A:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"><%=cauhoi.getDapAnA() %></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án B:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"><%=cauhoi.getDapAnB() %></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án C:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"><%=cauhoi.getDapAnC() %></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án D:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"><%=cauhoi.getDapAnD() %></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án Chính Xác:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12" style="margin-bottom: 20px;">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"><%=cauhoi.getDapAn() %></textarea>
            </div>
        </div>
        </form>
    </div>
</body>
</html>