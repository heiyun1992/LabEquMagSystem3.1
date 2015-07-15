package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mao.service.LoanHistoryService;

/**
 * Created by maozhongzhen on 2015年4月25日.
 */

@Controller
public class LoanHistoryController {	
	
	@Resource
	private LoanHistoryService loanHistoryService;
	
	@RequestMapping("LoanHistory/getAllLoanHistory")
	public String getAllLoanHistory(HttpServletRequest request,Model model){
		
		model.addAttribute("LoanHistoryLists",loanHistoryService.getAllLoanHistory());
		
		return "listsLoanHistory";
		
	}

}
