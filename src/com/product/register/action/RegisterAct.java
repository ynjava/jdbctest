package com.product.register.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.jdbc.dbhelper.Encrypt;
import com.product.register.dao.RegisterDao;
import com.product.register.service.RegisterService;

public class RegisterAct extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private RegisterService service;

	/**
	 * Constructor of the object.
	 */
	public RegisterAct() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取URL
		String path = request.getContextPath();
		String baseUrl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
		//设置编码为UTF-8
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String realname = request.getParameter("realname");
		//密码加密
		Encrypt enp=new Encrypt();
		String pswd = enp.SHA512(request.getParameter("pswd"));
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("username = " + username + "  realname = " + realname + " pswd = " + pswd + " title = " + title);
		List<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(pswd);
		params.add(realname);
		params.add(title);
		params.add(content);
		
		boolean flag = service.registerUser(params);
		if (flag) {
			out.println("注册成功!");
			response.sendRedirect(baseUrl + "/index.jsp");
		} else {
			out.println("注册失败");
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
		service = new RegisterDao();
	}

}
