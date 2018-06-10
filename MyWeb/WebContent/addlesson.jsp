<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="lesson" class="com.lyq.bean.Lesson"></jsp:useBean>
<jsp:setProperty property="*" name="lesson"/>
<%
try {
	// 加载数据库驱动，注册到驱动管理器
	Class.forName("com.mysql.jdbc.Driver");
	// 数据库连接字符串
	String url = "jdbc:mysql://localhost:3306/mydatabase?serverTimezone=UTC&&useSSL=false";
	// 数据库用户名
	String username = "root";
	// 数据库密码
	String password = "111";
	// 创建Connection连接
	Connection conn = DriverManager.getConnection(url,username,password);
	String sql = "insert into lesson(name,id,sex,lesson,lesson1,lesson2) values(?,?,?,?,?,?)";

	PreparedStatement ps = conn.prepareStatement(sql);
	
	ps.setString(1, lesson.getName());
	ps.setString(2, lesson.getId());
	ps.setString(3, lesson.getSex());
	ps.setString(4, lesson.getLesson());
	ps.setString(5, lesson.getLesson1());
	ps.setString(6, lesson.getLesson2());
	int row = ps.executeUpdate();
	if(row>0) {
	out.println("课程添加成功");
	}
	   conn.close();
		ps.close();
	
}catch (Exception e) {
	out.print("课程添加失败");
	e.printStackTrace();
		}
%>
<br>
<a href="home.jsp">返回</a>

</body>
</html>