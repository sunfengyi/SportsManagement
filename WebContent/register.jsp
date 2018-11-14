<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link
     href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
     rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="radio.css" />
</head>

<body>
<form  action=""  method="post"  name="frmregister"
style="width: 30em; margin: auto; margin-top: 150px;">

<h2>用户注册</h2><br/>

  用户名:<br/><br/>
  <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"></span>
                    <input type="text" id="Username" name="Username"class="form-control" />
          </div><br/>

密码:<br/><br/>
  <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"></span>
                    <input type="password" id="Password" name="Password" class="form-control" />
          </div><br/>
                   
确认密码:<br/><br/>
  <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"></span>
                    <input type="password" id="Password2" name="Password2"class="form-control" />
          </div><br/>
真实姓名:<br/><br/>
  <div class="input-group input-group-md">
              <span class="input-group-addon" id="sizing-addon1"></span>
                    <input type="text" id="Realname" name="Realname"class="form-control" />
          </div><br/>
性别：<br/><br/>
 <div>
        <input id="man" type="radio" name="sex" value="man" checked>
        <label for="man"></label>
        <span style="margin-left: 10px">男</span>
        
      </div>
      
      <div>
        <input id="woman" type="radio" name="sex" value="woman">
        <label for="woman"></label>
        <span style="margin-left: 10px">女</span>
      </div><br/>
      
      
<input type="submit" value="提交" class="btn btn-success btn-block"  /><br/>
<input type="button" value="重置" class="btn btn-success btn-block" onclick="location='http://localhost:8080/SportsManagement/register.jsp'"/><br/><br/>

</form>
<% 
    String  mUsername=request.getParameter("Username");
    String  mPassWord=request.getParameter("Password");
    String  nPassWord=request.getParameter("Password2");
    String  mRealname=request.getParameter("Realname");
    
    if(mUsername!=null&&mPassWord!=null&&nPassWord!=null&&mRealname!=null){
    	if(mPassWord.equals(nPassWord)){
    		response.sendRedirect("registertreate.jsp");
        }
    	else{
    		response.sendRedirect("registertreate2.jsp");
    	}
    }
    
    
   
 
%>


</body>

</html>