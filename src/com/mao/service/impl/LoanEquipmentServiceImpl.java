

package com.mao.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;



import org.springframework.ui.Model;

import com.alibaba.fastjson.JSON;
import com.mao.dao.LoanEquipmentDao;
import com.mao.pojo.Equipment;
import com.mao.pojo.LoanEquipment;
import com.mao.service.LoanEquipmentService;
import com.mao.util.PageBean;

/** 
 *Created by maozhongzhen on 2015年4月15日 . 
 */

@Service("loanEquipmentService")
public class LoanEquipmentServiceImpl implements LoanEquipmentService {

	@Resource
	private LoanEquipmentDao loanEquipmentDao;
	
	public LoanEquipment getAllLoanEquipment(int id) {
		// TODO Auto-generated method stub
		return loanEquipmentDao.getAllLoanEquipment(id);
	}

	@Override
	public List<LoanEquipment> getAllLoanEquipment1() {
		// TODO Auto-generated method stub
		return loanEquipmentDao.getAllLoanEquipment1();
	}

	@Override
	public boolean addLoanEquipment(LoanEquipment loanEquipment) {
		// TODO Auto-generated method stub
		return loanEquipmentDao.addLoanEquipment(loanEquipment);
	}

	@Override
	public boolean returnEquipment(int id) {
		// TODO Auto-generated method stub
		System.out.println("++++2"+id);
		return loanEquipmentDao.returnEquipment(id);
	}
	
	@Override
	public void showLoanEquipmentByPage(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		String pageNow = request.getParameter("pageNow");  
		  
	    PageBean page = null;  
	  
	    List<LoanEquipment> lists = new ArrayList<LoanEquipment>();  
	  
	    int totalCount = (int) loanEquipmentDao.getLoanEquipmentCount();  
	    if (pageNow != null) {  
	        page = new PageBean(totalCount, Integer.parseInt(pageNow));  
	        lists  = this.loanEquipmentDao.selectLoanEquipmentByPage(page.getStartPos(), page.getPageSize());  
	    } else {  
	        page = new PageBean(totalCount, 1);  
	        lists  = this.loanEquipmentDao.selectLoanEquipmentByPage(page.getStartPos(), page.getPageSize());
	    }  
	    System.out.println(JSON.toJSONString(lists));
	    model.addAttribute("loanEquipmentLists", lists );  
	    model.addAttribute("page", page); 
		
	}

	

}


