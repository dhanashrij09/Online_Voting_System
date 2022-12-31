<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"%>    
<%@ page import = "java.sql.ResultSet"%>   
<%@ page import = "java.sql.Statement"%>     
<%@ page import = "java.sql.Connection"%>  
<%@ page import = "java.sql.PreparedStatement"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>

<%

HttpSession session1 = request.getSession();
session1.removeAttribute("aName");
response.sendRedirect("index.jsp");

%>

</body>
</html>