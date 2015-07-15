package com.mao.test;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Admin;
import com.mao.pojo.LoanEquipment;
import com.mao.pojo.User;
import com.mao.service.AdminService;
import com.mao.service.LoanEquipmentService;


public class TestAdmin {
	
private ApplicationContext ac;
	
	@Resource
	private AdminService  adminService;		
	
	@Before
	public void before() {
		
		
		//**
		// ClassPathXmlApplicationContext
		//*
		// 没有前缀：默认为项目的classpath下相对路径
		ac= new ClassPathXmlApplicationContext("spring-mybatis.xml");			
		
		adminService=(AdminService)ac.getBean("adminService");
	}
	
	
	/*@Test
	public void test1() {
		Admin admin=new Admin();
		//admin.setId(5);
		admin.setName("sahbu3");
		admin.setPassword("1993");
		admin.setRole("VIP");
		 System.out.println(JSON.toJSONString(adminService.addAdmin(admin)));		
	}	*/
	
	/*@Test
	public void test2() {		
		
		System.out.println(adminService.delAdmin(5));
	
	}	*/

	/*@Test
	public void test3() {	
		Admin admin=new Admin();
		admin.setName("曹威");
		admin.setPassword("1994");
		admin=adminService.loginAdmin(admin);
		System.out.println(admin.getRole());
	
	}	*/
	
	@Test
	public void test4() {
		Admin admin=new Admin();
		admin.setId(13);
		admin.setName("sahbu2");
		admin.setPassword("1993");
		admin.setRole("VIP");
		 System.out.println(JSON.toJSONString(adminService.updateAdmin(admin)));		
	}	
}
