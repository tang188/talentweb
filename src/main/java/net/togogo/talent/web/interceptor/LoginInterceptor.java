package net.togogo.talent.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.togogo.talent.domain.TbCompany;
import net.togogo.talent.domain.TbUser;

import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		Configuration config = new PropertiesConfiguration("system.properties");
		String[] urls = config.getString("system.intercept.urls").split("\\|");
		
		//获取请求的url.
		String url = request.getRequestURI();
		//判断url是否是公开地址.
		for(String u : urls){
			if(url.indexOf(u)>=0){
				return true;
			}
		}
		
		//判断session.
		TbUser current_user = (TbUser) request.getSession().getAttribute("current_user");
		TbCompany current_company = (TbCompany) request.getSession().getAttribute("current_company");
		if(current_user != null){
			return true;
		}
		if(current_company != null){
			return true;
		}
		//执行到这里表示用户尚未登录，跳转到登陆页面.
		response.sendRedirect(request.getContextPath()+"/page/login.do");
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
}
