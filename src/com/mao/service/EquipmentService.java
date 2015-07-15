

package com.mao.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.mao.pojo.Equipment;

/** 
 *Created by maozhongzhen on 2015��4��13�� . 
 */

public interface EquipmentService {
	
	public List<Equipment> getAllEquipment();
	
	public boolean addEquipment(Equipment equipment);
	
	 public  void showEquipmentByPage(HttpServletRequest request,Model model);

}


