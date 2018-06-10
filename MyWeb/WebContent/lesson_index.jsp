<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选课页面</title>
<input type=button value="退出" onclick="javascript:location.href='login.jsp'">
<style type="text/css"> 
body{background-image:url(images/TIM图片20180609163457.jpg); background-size:cover;} 
         #header {
            
             color:black;
             text-align:center;
             padding:5px;
}
         ul{/*设置导航栏的框框*/  
            margin: 30px auto;/*框框整体的位置，30px是指离网页的顶部和下部的距离，auto控制的是左右距离为自动调节*/  
            width: 1500px;/*框框的宽度*/  
            height: 700px;/*框框的长度*/  
            padding: 0px;/*将框框的padding设置为零，不然会导致框框里的内容与框边缘有间隔*/  
            border:1px solid #000;/*添加边框*/  
        }  
        li{  
            list-style-type: none;/* 去掉li前的点 */  
            float: left;/*将li设置成做浮动，变为联动*/  
        }  
        a{  
            display: block;/*将a变成块状*/  
            width: 265px;/*设置块的宽度*/  
            height: 50px;/*设置块的长度*/  
            font-family: Microsoft Yahei;  
            line-height: 50px;/*设置字体在块中的高度*/  
            
            margin: 0px 0px;/*块里的高宽通过margin设置*/  
            color: black;  
            text-align: center;/*字体居中*/  
            text-decoration: none;/*去掉下划线*/  
            font-size: 15px;  
        }  
        a:hover{  
            background-color: #2f6f4f;  
        }  
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
</style>
</head>
<body>
<div id="header" align="center">
<h1>welcome!</h1>
<div>  
            <li><a href="first.html">等你在贵大</a></li>  
            <li><a href="FindServlet">查看学生信息</a></li>  
            <li><a href="lesson_index.jsp">课程添加</a></li>  
            <li><a href="LessonfinServlet">课程信息</a></li>  
            <li><a href="">教学资源</a></li> 
            </div>
<form action="addlesson.jsp" method="post">
<table align="center" border="1" width="600" height="300" >
  <tr>
     <td class="2" align="center" colspan="2">
         <h1>添加课程信息</h1>
      </td>
   <tr>
      <td align="center"><b>姓名</b></td>
      <td>
          <input type="text" name="name">
      </td>
   </tr>
   
   <tr>
      <td align="center"><b>学号</b></td>
      <td>
          <input type="text" name="id">
      </td>
   </tr>
   
   <tr>
      <td align="center"><b>性别</b></td>
      <td>
          <input type="radio" name="sex" value="男">男
            <input type="radio" name="sex" value="女">女
      </td>
   </tr> 
   
   <tr>
      <td align="center">课程选择</td>
      <td>
         <input type="checkbox" name="lesson" value="数据结构">数据结构<br>
          <input type="checkbox" name="lesson1" value="大学英语">大学英语<br>
          <input type="checkbox" name="lesson2" value="程序设计">程序设计<br>
      </td>
   </tr> 
   
   <tr>
      <td class="2" align="center" colspan="2">          
          <input type="submit" value="添加">
</table>


</form>
</body>
</html>