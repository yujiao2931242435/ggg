package com.lyq.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");
		
		String pwd = request.getParameter("password");
		
	    String name = request.getParameter("name");
	    
	    
	    
	    System.out.println(name);
	    System.out.println(pwd);
		
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
			
			//String sql = "select * from user where name=? and password=?";
			
			PreparedStatement ps = conn.prepareStatement("select * from users where name=? and password=?");
			
			ps.setString(1, name);
			ps.setString(2, pwd);
			
			//Statement stmt = conn.createStatement();
			
			
			
			ResultSet rs = ps.executeQuery();
			
			//rs.close();		// 关闭ResultSet
			//stmt.close();	// 关闭Statement
			
			if(rs.next()) {
				Student student = new Student();
				HttpSession session = request.getSession();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
			    session.setAttribute("student", student);
				
			    response.sendRedirect("home.jsp");
			    
			}else {
				response.sendRedirect("error.jsp");
			}
			conn.close();	// 关闭Connection
			ps.close();
			rs.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
