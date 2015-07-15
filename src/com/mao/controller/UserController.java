package com.mao.controller;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Teacher;
import com.mao.pojo.User;
import com.mao.service.TeacherService;
import com.mao.service.UserService;








import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ksdhc on 2015/3/30.
 */

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userservice;
	
	@Resource
	private TeacherService teacherService;
	
	@RequestMapping("/login1")
	public String login1(User user,HttpServletRequest request){

		return "LoginUser";	
		
	}
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		System.out.println(JSON.toJSONString(userservice.login(user)));
		if(userservice.login(user)!=null){
			System.out.println("13214");	
		return "list";	
		}
		else{
			return "LoginUser";
		}		
		
	}
	
	@RequestMapping("/register1")
	public String ReqUser(Teacher teacher,HttpServletRequest request){

		return "RegUser";
		
		
	}
	
	@RequestMapping("/register")
	public String ReqUser1(Teacher teacher,HttpServletRequest request){
		teacherService.addTeacher(teacher);
		
		return "redirect:/equipment/getAllEquipment";	
		
	}
	
	@RequestMapping(value = "/loginout", method = RequestMethod.GET)
	public String loginout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/loginAdmin1";
	}
	
}
