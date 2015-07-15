package com.mao.service;

import java.util.List;

import com.mao.pojo.Admin;

public interface AdminService {
	
	public boolean addAdmin(Admin admin);
	
	public boolean delAdmin(int id);
	
	public List<Admin> getAllAdmin();
		
	public Admin loginAdmin(Admin admin);
	
	public boolean updateAdmin(Admin admin);
	

}
