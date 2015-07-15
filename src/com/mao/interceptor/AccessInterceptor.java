package com.mao.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;





public class AccessInterceptor implements HandlerInterceptor{
	
	//配置不拦截的资源
	public String[] allowUrls;
    
    public void setAllowUrls(String[] allowUrls) {  
        this.allowUrls = allowUrls;  
    } 
	
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object arg2) throws Exception {

				HttpSession session = req.getSession();
				String reqUrl = req.getRequestURI().replace(req.getContextPath(), "");
				
				//图片,css,js,Login,Access路径请求允许通过
				if(null != allowUrls && allowUrls.length>=1) {
			            for(String url : allowUrls) {    
			                if(reqUrl.contains(url)) {    
			                    return true;    
			                }
			        }
				}
				
				//用户未登录转向登录页面
				if (session.getAttribute("currentUser") == null) {
					
					resp.sendRedirect("/LabEquMagSystem2.2/admin/loginAdmin");
					
					return false;
					
				}/*else{
					
					//获取用户拥有的权限
					Role role = (Role) session.getAttribute("currentRole");
					List<Node> contents = new ArrayList<Node>();
					for (Node node : role.getNodes()) {
						if (node.getStatus() == 1)
							contents.add(node);
					}
					
					//System.out.println("---------------------------------用户权限个数："+contents.size());
					
					
					//请求路径权限与用户匹配
					for (Node content : contents) {
						if (content.getName().equals(reqUrl.trim())) {
							return true;
						}
					}
					
					//用户没有权限
					resp.sendRedirect("powererror.jsp");
					return false;
				}	*/
				else{
					return true;
				}
	}
}
