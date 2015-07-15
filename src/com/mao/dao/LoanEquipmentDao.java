

package com.mao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mao.pojo.Equipment;
import com.mao.pojo.LoanEquipment;

/** 
 *Created by maozhongzhen on 2015年4月15日 . 
 */

public interface LoanEquipmentDao {
	
	/**
	 * 
	 * @param id
	 * @return 根据Id查找借出的设备
	 */
	public LoanEquipment getAllLoanEquipment(int id);
	
	/**
	 * 
	 * @return 获取全部借出的设备
	 */
	public List<LoanEquipment> getAllLoanEquipment1();
	
	/**
	 * 
	 * @param loanEquipment
	 * @return 借出登记
	 */
	public boolean addLoanEquipment(LoanEquipment loanEquipment);
	
	/**
	 * 
	 * @param startPos
	 * @param pageSize
	 * @return 分页显示借出的设备
	 */
	public List<LoanEquipment> selectLoanEquipmentByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);  
	
	/**
	 * 
	 * @return 获取借出的总记录
	 */
	public long getLoanEquipmentCount();
	
	/**
	 * 
	 * @param id
	 * @return 归还实验室设备
	 */
	public boolean returnEquipment(int id);
	
		

}


