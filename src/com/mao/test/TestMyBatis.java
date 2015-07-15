package com.mao.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.alibaba.fastjson.JSON;
import com.mao.pojo.User;
import com.mao.service.UserService;



//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})

public class TestMyBatis {
	
	private ApplicationContext ac ;
	
	@Resource
	private UserService  userService;		
	
	@Before
	public void before() {
		
		
		//**
		// ClassPathXmlApplicationContext
		//*
		// 没有前缀：默认为项目的classpath下相对路径
		ac= new ClassPathXmlApplicationContext("spring-mybatis.xml");
		
		// 前缀classpath：表示的是项目的classpath下相对路径
		//ac = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
		
		// 使用前缀file 表示的是文件的绝对路径
	 //	ac = new ClassPathXmlApplicationContext("file:D:/spring-mybatis.xml");
		
		// 利用通配符文件加载
		//ac = new ClassPathXmlApplicationContext("*mybatis.xml");
		
		// 多文件加载
		/*String[] xmlCfg = new String[] { "classpath:base.spring.xml","spring-mybatis.xml" };
		ac = new ClassPathXmlApplicationContext(xmlCfg);*/
		
		
		// FileSystemXmlApplicationContext
		
		// 前缀classpath：表示的是项目的classpath下相对路径
		//ac = new FileSystemXmlApplicationContext("classpath:spring-mybatis.xml"); 
		// 默认为项目工作路径 即项目的根目录
		//ac =new FileSystemXmlApplicationContext("src/spring-mybatis.xml"); 
		// 使用前缀file 表示的是文件的绝对路径
		// ac = new FileSystemXmlApplicationContext(
		// "file:D:/spring-mybatis.xml");
		
		userService=(UserService)ac.getBean("userService");
	}
	
	@Test
	public void test2() {
		 //System.out.println(JSON.toJSONString( assetService.deleteAssetById(20)));
		User user=new User();
		user.setName("mao");
		user.setPassword("123");
		 System.out.println(JSON.toJSONString(userService.login(user)));
	
	}	
	
}

