<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>赛事报名</title>
<link rel="stylesheet" type="text/css" href="text.css" />
<link rel="stylesheet" type="text/css" href="web.css" />

</head>
<body>
<%!
      public class Item{
	      public String itemnum;
	      public String itemname;
	      public String itemsex;
	      public int maxnum;
	      public int currentnum;
	      public String matchtime;

	      public Item(String itemnum,String itemname,String itemsex,int maxnum,int currentnum,String matchtime) {
	    	  this.itemnum=itemnum;
	    	  this.itemname=itemname;
	    	  this.itemsex=itemsex;
	    	  this.maxnum=maxnum;
	    	  this.currentnum=currentnum;
	    	  this.matchtime=matchtime;
	    	}
	     
          }
         int i=0;
         private Item[] item=new Item[]{
        		 new Item("01","男子100米预赛","男",100,20,"2018-10-18 8:00-9:00"),
        		 new Item("02","男子200米预赛","男",100,29,"2018-10-18 9:00-10:00"),
        		 new Item("03","男子400米预赛","男",100,17,"2018-10-18 10:00-11:00"),
         };
%>
<%

 %>
<h1>运动员管理系统</h1> <br/> <br/>
<table width="1000" bgcolor="#FFFFFF"border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#804040">
    <td><table border="0" cellspacing="0" cellpadding="0" class="nav">
  <tr>
    <td width="150" height="45" align="center" valign="middle"><a href="index_sport.jsp">赛事概况</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="signup_sport.jsp">赛事报名</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="">个人比赛详情</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="">成绩查询</a></td>
    <td width="150" height="45" align="center" valign="middle"><a href="">退出系统</a></td>
  </tr>
    </table>
</td>
  </tr>
</table><br/><br/><br/>

<table border="1" width="600"align="center" >

<tr>
<tr bgcolor="#93dbdd">
<td align="center">项目编号</td>
<td align="center">项目名称</td>
<td align="center">性别限制</td>
<td align="center">最大容量</td>
<td align="center">已报名人数</td>
<td align="center">比赛时间</td>
</tr>
<%for(int i=0;i<3;i++){%>
<tr>
<td align="center"> <%=item[i].itemnum%></td>
<td align="center"> <%=item[i].itemname%></td>
<td align="center"> <%=item[i].itemsex%></td>
<td align="center"> <%=item[i].maxnum%></td>
<td align="center"> <%=item[i].currentnum%></td>
<td> <%=item[i].matchtime%></td>
<td align="center"><input type="submit" value="报名" onclick="add_shoppingcar(this)" /></td>
</tr>
<%}%>

</table><br/><br/><br/>
        <table border="1" align="center">
            <thead>
                <tr bgcolor="#93dbdd">
                <th>项目编号</th>
                <th >项目名称</th>
                <th>退选</th>
                </tr>
            </thead>
            <tbody id="goods">
               
            </tbody>
            <tfoot>

                
            </tfoot>
            
        </table><br/><br/><br/>
    </body>
    <script type="text/javascript">
        //this js中指当前对象
        function add_shoppingcar(btn){
            var tr=btn.parentNode.parentNode;
            var tds=tr.getElementsByTagName("td");
            var name=tds[0].innerHTML;
            var price=tds[1].innerHTML;
            var tbody=document.getElementById("goods");
            var row=tbody.insertRow();
            row.innerHTML="<td>"+name+"</td>"+
        "<td align='center'>"+price+"</td>"+
        "<td align='center'>"+
        "<input type='button' value='-' id='jian'  onclick='change(this,-1)'  />"+
        "<input id='text' type='text' size='1' value='1' readonly='readonly' />"+
        "<input type='button' value='+' id='add'  onclick='change(this,1)'  />"+
        "</td>"+
        "<td>"+price+"</td>"+
        "<td align='center'>"+
            "<input type='button' value='X' onclick='del(this)'/>"+
        "</td>"+
        "</tr>"
        total();
        }
       
        function change(btn,n){
        var inputs = btn.parentNode.getElementsByTagName("input");
        var amount = parseInt(inputs[1].value);
        if(amount<=1 && n<0){
            return;
        }
        inputs[1].value = amount + n;
        amount = inputs[1].value;
        var tr = btn.parentNode.parentNode;
        var tds = tr.getElementsByTagName("td");
        var price = parseFloat(tds[1].innerHTML);
        var m = price * amount;
        tds[3].innerHTML = m;
        total();
    }


        function total(){
            var tbody=document.getElementById("goods");
            var trs=tbody.getElementsByTagName("tr");
            var sum=0;
            for(var i=0;i<trs.length;i++){
                var tds=trs[i].getElementsByTagName("td");
                var m=tds[3].innerHTML;
                sum += parseFloat(m);
            }
            var total=document.getElementById("total");
            total.innerHTML = sum;
        }
        function del(i){
            var tr=i.parentNode.parentNode;
            tr.parentNode.removeChild(tr);
            total();
        }
        function settlement(){
        	window.location.href="settlement.jsp"; 
        }
    </script>
  
  
  
  
<table height="50" align="center"  bgcolor="#804040" width="1000" style="color:#FFFFFF;">
  <tr>
    <td height="50" align="center" valign="middle" bgcolor="#804040" width="1000" style="color:#FFFFFF;">欢迎使用运动员管理系统</td>
  </tr>
</table>
</body>
</html>