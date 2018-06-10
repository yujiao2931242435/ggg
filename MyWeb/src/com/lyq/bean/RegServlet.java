package com.lyq.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegServlet
 */

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
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
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String name =  request.getParameter("name");
		String sex = request.getParameter("sex");
		String pwd = request.getParameter("password");
		String age = request.getParameter("age");
		String qq = request.getParameter("qq");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(sex);
		System.out.println(pwd);
		System.out.println(age);
		System.out.println(qq);
		if(name==null) {
			response.sendRedirect("error.jsp");
		}
		
		String sql = "insert into users(id,name,sex,password,age,qq) values(?,?,?,?,?,?)";
		
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
					
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, sex);
			ps.setString(4, pwd);
			ps.setString(5, age);
			ps.setString(6, qq);
			
		//	Statement ps = conn.createStatement();
			
			int row = ps.executeUpdate();
			if(row>0) {
			
			System.out.println("插入成功");
			response.sendRedirect("login.jsp");
			
			
			}else {
				System.out.println("插入失败");
			
				
				conn.close();
				ps.close();
			}
		}catch (Exception e) {
				// TODO Auto-generated catch block
			response.sendRedirect("fail.jsp");
				e.printStackTrace();
				}
			
		//response.sendRedirect("error.jsp");
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
		}

	}

