package com.mao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mao.dao.TeacherDao;
import com.mao.pojo.Teacher;
import com.mao.service.TeacherService;

/**
 * Created by maozhongzhen on 2015Äê4ÔÂ23ÈÕ.
 */

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	
	@Resource
	private TeacherDao teacherDao;

	@Override
	public List<Teacher> getAllTeacher() {
		// TODO Auto-generated method stub
		return teacherDao.getAllTeacher();
	}

	@Override
	public boolean addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.addTeacher(teacher);
	}





}
