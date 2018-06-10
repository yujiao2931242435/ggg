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
<body>

<form action="RegServlet" method="post" id="form" onsubmit="return check(this);">
	<table align="center" width="450">
		<tr>
			<td align="center" colspan="2">
				<h2>用户注册</h2>
				<hr>
			</td>
		</tr>
		<tr>
			<td align="right"><b>学号：</b></td>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<td align="right"><b>用户名：</b></td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td align="right"><b>性别：</b></td>
			<td><input type="radio" name="sex" value="男" />男
			    <input type="radio" name="sex" value="女" />女
			</td>
		</tr>
		<tr>
			<td align="right"><b>密码：</b></td>
			<td><input type="password" name="password" /></td>
		</tr>
		
		<tr>
			<td align="right"><b>年龄：</b></td>
			<td><input type="text" name="age" /></td>
		</tr>
		<tr>
			<td align="right"><b>QQ号码：</b></td>
			<td><input type="text" name="qq" /></td>
		</tr>


		<tr>
			<td align="center" colspan="2">
				<input type="submit" value="注　册">
			</td>
		</tr>
	</table>
</form>
</body>

</body>
</html>