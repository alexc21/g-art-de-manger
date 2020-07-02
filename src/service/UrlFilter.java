package service;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter (urlPatterns = {"/*"})
public class UrlFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest requestHttp = (HttpServletRequest) request;
		HttpServletResponse responseHttp = (HttpServletResponse) response;
		
		String chemin = requestHttp.getServletPath() + "/";
		System.out.println("filtre " + chemin);
		
		if (chemin.equals("//") ) {
			RequestDispatcher disp = requestHttp.getRequestDispatcher("/accueil.jsp");
			disp.forward(requestHttp, responseHttp);
			
			//requestHttp.getRequestDispatcher("/accueil.jsp").forward(requestHttp, responseHttp);
		}
		else if (chemin.startsWith("/produit")) {
			chain.doFilter(requestHttp, responseHttp);
		}
		else if (chemin.startsWith("/assets")) {
			chain.doFilter(requestHttp, responseHttp);
			}
	}

}
