

package com.mao.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mao.dao.EquipmentDao;
import com.mao.pojo.Equipment;
import com.mao.service.EquipmentService;
import com.mao.util.PageBean;

/** 
 *Created by maozhongzhen on 2015Äê4ÔÂ13ÈÕ . 
 */

@Service("equipmentService")
public class EquipmentServiceImpl implements EquipmentService {
	
	@Resource
	private EquipmentDao equipmentDao;

	@Override
	public List<Equipment> getAllEquipment() {
		// TODO Auto-generated method stub
		return equipmentDao.getAllEquipment();
	}

	@Override
	public boolean addEquipment(Equipment equipment) {
		// TODO Auto-generated method stub
		return equipmentDao.addEquipment(equipment);
	}

	@Override
	public void showEquipmentByPage(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		 String pageNow = request.getParameter("pageNow");  
		  
		    PageBean page = null;  
		  
		    List<Equipment> lists = new ArrayList<Equipment>();  
		  
		    int totalCount = (int) equipmentDao.getEquipmentCount();  
		  
		    if (pageNow != null) {  
		        page = new PageBean(totalCount, Integer.parseInt(pageNow));  
		        lists  = this.equipmentDao.selectEquipmentByPage(page.getStartPos(), page.getPageSize());  
		    } else {  
		        page = new PageBean(totalCount, 1);  
		        lists  = this.equipmentDao.selectEquipmentByPage(page.getStartPos(), page.getPageSize());  
		    }  
		  
		    model.addAttribute("equipmentLists", lists );  
		    model.addAttribute("page", page); 
	}



}


