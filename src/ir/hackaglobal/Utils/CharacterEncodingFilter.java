package ir.hackaglobal.Utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharacterEncodingFilter implements Filter {

    protected String encoding;

    public void init(FilterConfig filterConfig) throws ServletException {
        encoding = filterConfig.getInitParameter("encoding");
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
            FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        request.setCharacterEncoding(encoding);
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.setCharacterEncoding(encoding);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {
        encoding = null;
    }

}