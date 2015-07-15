

package com.mao.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.mao.pojo.LoanEquipment;

/** 
 *Created by maozhongzhen on 2015年4月15日 . 
 */

public interface LoanEquipmentService { 
	
	
	public LoanEquipment getAllLoanEquipment(int id);
	
	public List<LoanEquipment> getAllLoanEquipment1();
	
	public boolean addLoanEquipment(LoanEquipment loanEquipment);
	
	public boolean returnEquipment(int id);
	
	public  void showLoanEquipmentByPage(HttpServletRequest request,Model model);

}


