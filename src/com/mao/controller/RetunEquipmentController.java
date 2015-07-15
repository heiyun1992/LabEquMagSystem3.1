package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mao.service.LoanEquipmentService;

/**
 * Created by maozhongzhen on 2015年4月25日.
 */

@Controller
public class RetunEquipmentController {
	
	@Resource
	private LoanEquipmentService loanEquipmentService;
	
	@RequestMapping("return/returnEquipment")
	public String returnEquipment(HttpServletRequest request,int delId){
		System.out.println("++++1"+delId);
		loanEquipmentService.returnEquipment(delId);
		
		return "redirect:/loan/addLoanEquipment1";
		
	}

}
