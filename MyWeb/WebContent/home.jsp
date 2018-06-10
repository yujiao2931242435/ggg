<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>  
    <meta charset="utf-8">  
    <title>首页</title> 
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
            width: 270px;/*设置块的宽度*/  
            height: 50px;/*设置块的长度*/  
            font-family: Microsoft Yahei;  
            line-height: 50px;/*设置字体在块中的高度*/  
            
            margin: 0px 0px;/*块里的高宽通过margin设置*/  
            color: black;  
            text-align: center;/*字体居中*/  
            text-decoration: none;/*去掉下划线*/  
            font-size: 20px;  
        }  
        a:hover{  
            background-color: #2f6f4f;  
        }  
    </style>  
</head>  

<body>  
<div id="header">
<h1>welcome!</h1>

</div>
 <table>  
    <div>  
        
            <li><a href="first.html">等你在贵大</a></li>  
            <li><a href="FindServlet">查看学生信息</a></li>  
            <li><a href="lesson_index.jsp">课程添加</a></li>  
            <li><a href="LessonfinServlet">课程信息</a></li>  
            <li><a href=""></a></li>  
    </div>  
  
  
    </table>  
</body>  


</html>
