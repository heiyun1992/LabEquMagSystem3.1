package com.mao.test;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.LoanEquipment;
import com.mao.pojo.User;
import com.mao.service.EquipmentService;
import com.mao.service.LoanEquipmentService;


public class TestOneToMore {
	
private ApplicationContext ac;
	
	@Resource
	private LoanEquipmentService  loanEquipmentService;		
	
	@Resource
	private EquipmentService  equipmentService;		
	
	@Before
	public void before() {
		
		
		//**
		// ClassPathXmlApplicationContext
		//*
		// û��ǰ׺��Ĭ��Ϊ��Ŀ��classpath�����·��
		ac= new ClassPathXmlApplicationContext("spring-mybatis.xml");			
		
		//loanEquipmentService=(LoanEquipmentService)ac.getBean("loanEquipmentService");
		equipmentService=(EquipmentService)ac.getBean("equipmentService");
	}
	
	/*@Test
	public void test1() {
		int id=2;
		System.out.println(JSON.toJSONString(loanEquipmentService.getAllLoanEquipment(2).getAdmin().getName()));
		 System.out.println(JSON.toJSONString(loanEquipmentService.getAllLoanEquipment(2).getEquipment().getName()));
	
	}	*/
	
	/*@Test
	public void test2() {
		 System.out.println(JSON.toJSONString(loanEquipmentService.getAllLoanEquipment1()));
	
	}	*/
	
	@Test
	public void test3() {
		 System.out.println(JSON.toJSONString(equipmentService.getAllEquipment()));
	
	}	

}
