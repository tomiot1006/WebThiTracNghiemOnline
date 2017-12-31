<%-- 
    Document   : upload
    Created on : 26-May-2016, 11:30:39 PM
    Author     : TUNGDUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload file</title>
    </head>
    <body>

    <form method="get" enctype="multipart/form-data" action="UploadServlet">
  		<input type="file" name="file"><br/>
  		<input type="submit" value="Upload File">
  	</form>

	</body>
</html>
