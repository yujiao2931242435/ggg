package com.lyq.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LessonfinServlet")
public class LessonfinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/mydatabase?serverTimezone=UTC";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "111";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 获取Statement
			Statement stmt = conn.createStatement();
			// 添加学生信息的SQL语句
			String sql = "select * from lesson";
			// 执行查询
			ResultSet rs = stmt.executeQuery(sql);
			
			//System.out.println(rs.getString("name"));
			// 实例化List对象
			List<Lesson> list = new ArrayList<Lesson>();
			// 判断光标向后移动，并判断是否有效
			while(rs.next()){
				// 实例化Student对象
				Lesson lesson = new Lesson();
				// 对id属性赋值
				lesson.setName(rs.getString("name"));
				// 对name属性赋值
				lesson.setId(rs.getString("id"));
				// 对age属性赋值
				lesson.setSex(rs.getString("sex"));
				// 对sex属性赋值
				lesson.setLesson(rs.getString("lesson"));
				lesson.setLesson1(rs.getString("lesson1"));
				lesson.setLesson2(rs.getString("lesson2"));
				
				// 将学生对象添加到集合中
				list.add(lesson);
				
			}
			// 将图书集合放置到request之中
			request.setAttribute("list", list);
			rs.close();		// 关闭ResultSet
			stmt.close();	// 关闭Statement
			conn.close();	// 关闭Connection
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 请求转发到student_list.jsp
		request.getRequestDispatcher("lesson_list.jsp").forward(request, response);
	}
}
