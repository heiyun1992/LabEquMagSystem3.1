package com.mao.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.mao.service.TeacherService;

/**
 * Created by maozhongzhen on 2015年4月23日.
 */

@Controller
public class TeacherController {
	
	@Resource
	private TeacherService teacherService;
		

}
