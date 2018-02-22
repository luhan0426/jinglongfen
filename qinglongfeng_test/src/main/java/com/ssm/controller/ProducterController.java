package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.pojo.Liuyan;
import com.ssm.service.ProducterService;

@Controller
@RequestMapping("product")
public class ProducterController {
	@Autowired
	private ProducterService ProducterService;
	@RequestMapping("list")
	public String center(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "pages/left";
	}
	//��ҵ�Ļ�
	@RequestMapping(("index"))
	public String shou(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "view/index";
	}
	//��ҵ�Ļ�
	@RequestMapping("enterprise_culture")
	public String culture(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "view/enterprise_culture";
	}
	//��Ʒ
	@RequestMapping("product")
	public String right(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "view/product";
	}
	
	//��������
	@RequestMapping("honor")
	public String honor(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "view/honor";
	}
	
	
	//�ɹ�����
	@RequestMapping("success")
	public String success(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "view/success";
	}
	@RequestMapping("/contact")
	public String contact(ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		return "view/contact";
	}

	
	//��������
	@RequestMapping("liuyan")
	public String liuyan(ModelMap map) {
		map.put("liuyan", new Liuyan());
		return "view/liuyan";
	}
	
	
	//�������
	@RequestMapping("toLiuyan")
	public String  toLiuyan(Liuyan liuyan,ModelMap map) {
		map.put("list", ProducterService.retrieveList());
		ProducterService.toLiuyan(liuyan);
		return "view/honor";
	}
}
