package com.slphase2project;

import java.util.concurrent.TimeUnit;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
  
    public LoginServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginBean login = new LoginBean();
		login.setUsername(request.getParameter("username"));
		login.setPassword(request.getParameter("password"));
	
		LoginDao loginDao = new LoginDao();
	  	boolean status = false;
		try {
			status = loginDao.validate(login);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	   	if (status) {
	   		HttpSession session = request.getSession();
	   		session.setAttribute("isUserLoggedIn", true);
	   		response.sendRedirect(request.getContextPath() + "/admin/index.jsp");
	   }
	   	else {
	   	PrintWriter out = response.getWriter();
	   	out.println("<script type=\"text/javascript\">");
	    out.println("alert('Username or password incorrect');");
	    out.println("location='login.jsp';");
	    out.println("</script>");
	   	//response.sendRedirect("login.jsp");
	   	}
	}

}
