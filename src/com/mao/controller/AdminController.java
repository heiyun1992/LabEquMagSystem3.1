package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Admin;
import com.mao.pojo.Equipment;
import com.mao.pojo.User;
import com.mao.service.AdminService;


@Controller
//@RequestMapping("/admin")
public class AdminController {
	
	
	@Resource
	private AdminService adminService;
	
	
	@RequestMapping("/admin/loginAdmin1")
	public String login1(Admin admin,HttpServletRequest request){

		return "LoginUser";	
		
	}
	
	@RequestMapping("/admin/loginAdmin")
	public String login(Admin admin,HttpServletRequest request){
		
		HttpSession session = request.getSession();
		admin=adminService.loginAdmin(admin);
		System.out.println(JSON.toJSONString(admin));
		if(admin!=null){
			session.setAttribute("admin",admin); 
			session.setAttribute("currentUser", admin);
		return "redirect:/equipment/getAllEquipment";		
		}
		else{
			return "LoginUser";
		}	
	}	
	
	
	@RequestMapping("admin/updateAdmin1")
	public String updateAdmin1(HttpServletRequest request,Admin admin){
		return "/updateAdmin";
		
	}
	@RequestMapping("admin/updateAdmin")
	public String updateAdmin(HttpServletRequest request,Admin admin,@RequestParam("password") String password){
		admin=(Admin)request.getSession().getAttribute("admin");
		admin.setPassword(password);
		//System.out.println(password);
		
		System.out.println(JSON.toJSONString(admin));
		adminService.updateAdmin(admin);
		return "redirect:/admin/getAllAdmin";
		
	}
	
	@RequestMapping("admin/addAdmin1")
	public String addAdmin1(HttpServletRequest request,Admin admin){
		
		return "addAdmin";
		
	}
	
	@RequestMapping("admin/addAdmin")
	public String addAdmin(HttpServletRequest request,Admin admin){
		adminService.addAdmin(admin);
		return "redirect:/admin/getAllAdmin";
		
	}
	
	@RequestMapping("/admin/getAllAdmin")
	 public String getAllAdmin(HttpServletRequest request,Model model){
		model.addAttribute("adminList",adminService.getAllAdmin());
		System.out.println(JSON.toJSONString(adminService.getAllAdmin()));
		 return "listsAdmin";				
	}
}
