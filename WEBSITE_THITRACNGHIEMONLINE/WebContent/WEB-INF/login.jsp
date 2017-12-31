<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="user" value="${param.tendangnhap}" scope="session" />


<fmt:requestEncoding value="UTF-8" />   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="css/bootstrap-theme.css" rel="stylesheet" />
  <link href="login.css" rel="stylesheet" />
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="jquery.validate.min.js"></script>
  <style type="text/css">
   #formDemo
   {
    background: #9FF;
   }
    label {
        display: inline-block;
        width: auto;
    }
    input[type="text"], input[type="password"] {
        display: inline-block;
        width: auto;
    }
    label.error {
        display: inline-block;
        color:red;
        width: auto;
    }
    </style>
   
</head>
<body>



<div class="login-form">
      <div class="front-face">
          <span class="text">LOGIN</span>
        </div>
        <form id="formDemo" action="login" method="post">
                  
                       <div class="alert alert-success" role="alert"><label class="user">Tên đăng nhập :</label>
                            <input name="tendangnhap" type="text" class="form-control" placeholder="Enter username" required><br><br><br>
                        <label class="user">Mật khẩu :</label>
                             
                                <input  id="password" type="password" name="password" class="form-control"  placeholder="Enter Password" required>
                        
                       <br>
                       <br> 
                      <input type="radio" name="gender" value="sinhvien" checked=""> Sinh Viên<br>
                      <input type="radio" name="gender" value="giangvien"> Giảng Viên<br>
                      <input type="radio" name="gender" value="nguoitaodethi"> Người Tạo Đề Thi<br>
                      <input type="radio" name="gender" value="admin"> Admin<br>
                      <br>

                      <button  type="submit" class="submit" ></button>
                        </div>
         </form>
    </div>
   <script type="text/javascript">

    $(document).ready(function() {
        
         $("#formDemo").validate({
                    rules: {
                        tendangnhap: "required",
                        
                        password: {
                            required: true,
                            minlength: 5
                        },
                       
                    },
                    messages: {
                        tendangnhap: "Vui lòng nhập tên đăng nhập!",
                        
                        password: {
                            required: 'Vui lòng nhập mật khẩu!',
                            minlength: 'Vui lòng nhập ít nhất 5 kí tự!'
                        },
                        
                    }
                });
    });
    </script>
</body>
</html>