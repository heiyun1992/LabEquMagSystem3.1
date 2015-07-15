package com.mao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mao.dao.AdminDao;
import com.mao.pojo.Admin;
import com.mao.service.AdminService;


@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Resource
	private AdminDao adminDao;

	@Override
	public boolean addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.addAdmin(admin);
	}

	@Override
	public boolean delAdmin(int id) {
		// TODO Auto-generated method stub
		return adminDao.delAdminById(id);
	}

	@Override
	public Admin loginAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.loginAdmin(admin);
	}

	@Override
	public List<Admin> getAllAdmin() {
		// TODO Auto-generated method stub
		return adminDao.getAllAdmin();
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.updateAdmin(admin);
	}

}
