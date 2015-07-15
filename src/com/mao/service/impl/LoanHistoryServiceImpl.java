package com.mao.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mao.dao.LoanHistoryDao;
import com.mao.pojo.LoanHistory;
import com.mao.service.LoanHistoryService;

/**
 * Created by maozhongzhen on 2015年4月25日.
 */

@Service("loanHistoryService")
public class LoanHistoryServiceImpl implements LoanHistoryService {
	
	@Resource
	private LoanHistoryDao loanHistoryDao;

	@Override
	public List<LoanHistory> getAllLoanHistory() {
		// TODO Auto-generated method stub
		return loanHistoryDao.getAllLoanHistory();
	}

}
