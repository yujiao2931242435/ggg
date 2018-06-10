<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{background-image:url(images/TIM图片20180609161249.jpg); background-size:cover;}
        .header{
            
           
            text-align: center;
            padding: 15px;
        }
        .footer{
            background-color: white;
            color: blake;
            text-align:center;
            padding:5px;
        }
</style>
</head>
<body>
 <div class="header">
     <table border="0">
     <tr>
        <td><img src="";></td>
        <td align="center"><h1>Welcome to Guizhou University!</h1></td>
        </tr>
       </table>
       </div>

<form id="form1" name="form1" method="post" action="Login" onsubmit="return check(this);">
<div align="center">


<table align="center" width="450">
<caption><h1>同学你好，请登录</h1></caption>
<tr>
			<td align="right"><h2>姓名：</h2></td>
			<td><input type="text" name="name" /></td>
		</tr>
 <tr>
			<td align="right"><h2>密码：</h2></td>
			<td><input type="password" name="password" /></td>
		</tr>
		
   
  <tr>
			<td align="center" colspan="2">
				<input type="submit" value="登 录">
			</td>
		</tr>
	</table>
<a href="index.jsp"><b>注册</b></a>
</div></form>
</body>
</html>