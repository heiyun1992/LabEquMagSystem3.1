package com.mao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mao.pojo.Equipment;

/** 
 *Created by maozhongzhen on 2015年4月13日 . 
 */

public interface EquipmentDao {
	
	/**
	 * 
	 * @return 获取全部的仪器设备
	 */
	public List<Equipment> getAllEquipment();//获取全部仪器设备
	
	
	/**
	 * 
	 * @param equipment
	 * @return 添加新仪器设备
	 */
	public boolean addEquipment(Equipment equipment);//添加仪器
	
	
	/**
	 * 
	 * @param startPos
	 * @param pageSize
	 * @return 分页显示仪器
	 */
	 public List<Equipment> selectEquipmentByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);  
	   

	 /**
	  * 
	  * @retur获取仪器的总记录
	  */
	 public long getEquipmentCount();  

}


