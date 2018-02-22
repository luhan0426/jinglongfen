package com.jinlongfeng.Interceptor;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jinlongfeng.pojo.SysUser;


public class Interceptor  implements HandlerInterceptor {
	private List<String> includeURIS;

	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		  String requestURI = request.getRequestURI();
		    String requestURL = request.getRequestURI().toString();
		      SysUser user = (SysUser) request.getSession().getAttribute("user");
		    if (!includeURIS.contains(requestURI)) {//拦截
		      return true;
		    } else {
		      if (user != null) {//已经登录不需要拦截
		        return true;
		      } else {
		        request.getRequestDispatcher("/login.jsp").forward(request, response);
		        return false;
		      }
		    }
	}

	public List<String> getIncludeURIS() {
		return includeURIS;
	}

	public void setIncludeURIS(List<String> includeURIS) {
		this.includeURIS = includeURIS;
	}
	
	
}
