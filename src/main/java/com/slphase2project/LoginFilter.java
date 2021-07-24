package com.slphase2project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@WebFilter("/")
public class LoginFilter implements Filter {

    public LoginFilter() {
    }


	public void destroy() {

	}

	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false);
        
        boolean isUserLoggedIn = (session != null && session.getAttribute("isUserLoggedIn") != null);
        
        if(isUserLoggedIn)
        {
		chain.doFilter(request, response);
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/index.jsp");
        //dispatcher.forward(request, response);
		}
        
        else {
        	
        	PrintWriter out = response.getWriter();
        	out.println("<html><body>");
        	out.println("<h3>Unauthorized access! Please login first.</h3>");
        	out.println("</body></html>");
        }
       
  }
 


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
