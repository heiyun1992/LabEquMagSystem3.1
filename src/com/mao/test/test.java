
package com.mao.test;
import javax.annotation.Resource;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.User;
import com.mao.service.UserService;
import com.mao.service.impl.UserServiceImpl;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;




/**
 * Created by ksdhc on 2015/3/31.
 */
public class test {
    private ApplicationContext ac=null;

   @Resource
    private UserService userService;

    @Before
    public void before(){

        ac=new ClassPathXmlApplicationContext("spring-mybatis.xml");
       userService=(UserService)ac.getBean("userService");
    }

    @Test
    public void test1(){

        User user=new User();
        user.setName("mao");
        user.setPassword("123");
        System.out.println("12321");
 
        System.out.println(JSON.toJSONString(userService.login(user)));
   System.out.println(userService.login(user).getId());
    }

}
