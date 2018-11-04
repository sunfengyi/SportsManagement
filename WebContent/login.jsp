<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page  import="com.geotest.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link
     href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
     rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="radio.css" />
</head>

<body>





 
    <form  action="loginjudge.jsp"  method="post"  name="frmmain"
    style="width: 30em; margin: auto; margin-top: 150px;">
    <h3>欢迎使用运动会管理系统！</h3><br/><br/><br/>

   <div class=" input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"><i
                   class="glyphicon glyphicon-user" ></i></span> 
                   <input id="username" type="text" name="username" class="form-control" placeholder="请输入用户名"/>
                   
          </div>
          <br />
          <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"><i
                   class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" />
          </div>
          <br/>
	
	
	
	
<img name="img1" align="middle" height="20px;" src="image.jsp" width="50"/>
<a href="JavaScript:reloadImage('image.jsp');">刷新</a>







    <input type="submit" value="登录" class="btn btn-success btn-block" /><br/><br/>
      <div>
        <input id="sport" type="radio" name="item" value="sport" checked>
        <label for="sport"></label>
        <span style="margin-left: 10px">运动员身份登录</span>
        
      </div>
      
      <div>
        <input id="admin" type="radio" name="item" value="admin">
        <label for="admin"></label>
        <span style="margin-left: 10px">管理员身份登录</span>
      </div>
 

       <a class="btn btn-sm btn-white btn-block" style="text-align: right;" th:href="@{register}" href="register.jsp"><h6>还没有账号？点击此处注册</h6></a>
 </form> 
        
          
    </form>

</body>
    	
</html>

    

