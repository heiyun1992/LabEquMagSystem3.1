

package com.mao.pojo;

import java.sql.Timestamp;
import java.util.Date;

/** 
 *Created by maozhongzhen on 2015年4月15日 . 
 */

public class LoanHistory {
	
	private int id;
	/*private int equipment_id;
	private int teacher_id;
	private int admin_id;*/
	private String loan_date;
	private Timestamp return_date;
	private Equipment equipment;
	private Admin admin;
	private Teacher teacher;	

	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Equipment getEquipment() {
		return equipment;
	}
	public void setEquipment(Equipment equipment) {
		this.equipment = equipment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/*public int getEquipment_id() {
		return equipment_id;
	}
	public void setEquipment_id(int equipment_id) {
		this.equipment_id = equipment_id;
	}
	
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}*/
	public String getLoan_date() {
		return loan_date;
	}
	public void setLoan_date(String loan_date) {
		this.loan_date = loan_date;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public Timestamp getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Timestamp return_date) {
		this.return_date = return_date;
	}
}


