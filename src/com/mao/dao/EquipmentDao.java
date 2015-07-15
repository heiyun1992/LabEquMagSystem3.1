package com.mao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mao.pojo.Equipment;

/** 
 *Created by maozhongzhen on 2015��4��13�� . 
 */

public interface EquipmentDao {
	
	/**
	 * 
	 * @return ��ȡȫ���������豸
	 */
	public List<Equipment> getAllEquipment();//��ȡȫ�������豸
	
	
	/**
	 * 
	 * @param equipment
	 * @return ����������豸
	 */
	public boolean addEquipment(Equipment equipment);//�������
	
	
	/**
	 * 
	 * @param startPos
	 * @param pageSize
	 * @return ��ҳ��ʾ����
	 */
	 public List<Equipment> selectEquipmentByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);  
	   

	 /**
	  * 
	  * @retur��ȡ�������ܼ�¼
	  */
	 public long getEquipmentCount();  

}


