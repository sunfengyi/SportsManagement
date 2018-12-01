<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.sql.*"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


	String mRandImage = (String) session.getAttribute("sRand");//验证码
	String inputRandImage = request.getParameter("identifyingcode");//输入的验证码
	if(inputRandImage.equals("")) {
		out.print("<script> alert('请输入验证码！');history.back(-1);</script>");
	}else if(!inputRandImage.equals(mRandImage)) {
		out.print("<script> alert('验证码错误，请重新输入！');history.back(-1);</script>");
	}else {
		//验证职位
		String mItem=request.getParameter("item");
		if(mItem==null) {
			out.print("<script> alert('请选择身份！');history.back(-1);</script>");
		}
		else {
			String mUserName = request.getParameter("username");
			String mPassword = request.getParameter("password");
			if("".equals(mUserName)) {
				out.print("<script> alert('请输入用户名！');history.back(-1);</script>");
			}else if("".equals(mPassword)) {
				out.print("<script> alert('请输入密码！');history.back(-1);</script>");
			}
			
			//加载sql驱动
			String driverName="com.mysql.jdbc.Driver";
			try{
			       Class.forName(driverName);
			}catch(ClassNotFoundException e){
			    	e.printStackTrace();
			}
	
			//连接数据库
			String  url="jdbc:mysql://localhost:3306/sportsmanagement?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
			String  un="root";
			String  pw="123456";
			Connection con=DriverManager.getConnection(url,un,pw);
		
			//查询数据
			String searchSqlRoad = "select UserName from user_"+mItem;
			Statement statement=con.createStatement();
			ResultSet reasultSearch=statement.executeQuery(searchSqlRoad);
		
			String flag=null;
			while(reasultSearch.next()){
				String sqlUserName=reasultSearch.getString("UserName");
				if(sqlUserName.equals(mUserName)) {
					flag=sqlUserName;
				
				}
			}
		
			if(flag==null) {
				out.print("<script> alert('查无此人');history.back(-1);</script>");
			}
			else {
				searchSqlRoad="select Password from user_"+mItem+" where UserName='"+flag+"'";
				reasultSearch=statement.executeQuery(searchSqlRoad);
				reasultSearch.next();
				String sqlPassword = reasultSearch.getString("Password");
				if(mPassword.equals(sqlPassword)) {
					if("sport".equals(mItem)) {
						response.sendRedirect("index_sport.jsp");
					}
					else if("admin".equals(mItem)) {
						response.sendRedirect("index_admin.jsp");
					}
				}
				else {
					out.print("<script> alert('密码不正确！');history.back(-1);</script>");
				}
			}

		}
	
	}
%>
</body>
</html>