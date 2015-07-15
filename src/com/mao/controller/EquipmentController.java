

package com.mao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.mao.pojo.Equipment;
import com.mao.service.EquipmentService;

/** 
 *Created by maozhongzhen on 2015年4月13日 . 
 */

@Controller
public class EquipmentController {
	
	@Resource
	private EquipmentService equipmentService;
	
	
	@RequestMapping("/equipment/getAllEquipment")
	 public String getAllEquipment(HttpServletRequest request,Model model){
		model.addAttribute("equipmentLists",equipmentService.getAllEquipment());
		 System.out.println(JSON.toJSONString(equipmentService.getAllEquipment()));
		 return "listsEquipment";
				
	}
	
	/*@RequestMapping("/equipment/getAllEquipment")
	 public String getAllEquipment(HttpServletRequest request,Model model){
		equipmentService.showEquipmentByPage(request, model);
		 return "listsEquipment";
				
	}*/
	
	@RequestMapping("/equipment/addEquipment1")
	 public String addEquipment1(HttpServletRequest request,Equipment equipment){
		
		 return "addEquipment";
				
	}
	@RequestMapping("/equipment/addEquipment")
	 public String addEquipment(HttpServletRequest request,Equipment equipment){
		equipmentService.addEquipment(equipment);
		System.out.println(JSON.toJSONString(equipment));
		 return "redirect:/equipment/getAllEquipment";
				
	}
	
	

}


