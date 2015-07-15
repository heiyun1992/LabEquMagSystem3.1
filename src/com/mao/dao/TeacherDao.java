package com.mao.dao;

import java.util.List;

import com.mao.pojo.Teacher;

/**
 * Created by maozhongzhen on 2015Äê4ÔÂ23ÈÕ.
 */
public interface TeacherDao {
	
	public List<Teacher> getAllTeacher();
	
	public boolean addTeacher(Teacher teacher);

}
