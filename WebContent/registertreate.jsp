<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page  import="com.geotest.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册处理</title>
</head>
<body>
<%
   String  userName=request.getParameter("userName");
   String  passWord=request.getParameter("passWord");
   String  userRealName=request.getParameter("userRealName");
   User u=new  User(userName,passWord,userRealName);   
%>
<p>注册成功，点击返回按钮返回登录界面！</p>
<input type="button" value="返回" onclick="location='http://localhost:8080/SportsManagement/login.jsp'"/> 
 

 
</body>
</html>