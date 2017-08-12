package br.com.fiap.filter;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import br.com.fiap.mb.UsuarioSessaoBean;

@WebFilter("/*")
public class PopularUsuarioFilter implements Filter {

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest r = (HttpServletRequest) req;
		UsuarioSessaoBean user = (UsuarioSessaoBean) r.getSession().getAttribute("usuario");
		
		Calendar cal = Calendar.getInstance();
		if(user == null) {
			UsuarioSessaoBean n = new UsuarioSessaoBean();
			n.setPrimeiroAcesso(cal.getTime());
			n.setUltimoAcesso(cal.getTime());
			user = n;
			r.getSession().setAttribute("usuario", user);
		} else{
			user.setUltimoAcesso(cal.getTime());
		}
		chain.doFilter(r, resp);
	}

}
