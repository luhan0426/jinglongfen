package com.jinlongfeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jinlongfeng.pojo.Liuyan;
import com.jinlongfeng.service.ProductService;

@Controller
@RequestMapping("product")
public class ProducterController {
	@Autowired
	private ProductService productService;
	@RequestMapping("list")
	public String center(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "pages/left";
	}
	//企业文化
	@RequestMapping(("index"))
	public String shou(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/index";
	}
	//企业文化
	@RequestMapping("enterprise_culture")
	public String culture(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/enterprise_culture";
	}
	//产品
	@RequestMapping("product")
	public String right(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/product";
	}
	
	//荣誉资质
	@RequestMapping("honor")
	public String honor(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/honor";
	}
	
	
	//成功案例
	@RequestMapping("success")
	public String success(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/success";
	}
	@RequestMapping("/contact")
	public String contact(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/contact";
	}

	
	//在线留言
	@RequestMapping("liuyan")
	public String liuyan(ModelMap map) {
		map.put("liuyan", new Liuyan());
		map.put("list", productService.retrieveList());
		return "view/liuyan";
	}
	
	
	/*//留言添加
	@RequestMapping("toLiuyan")
	public String  toLiuyan(Liuyan liuyan,ModelMap map) {
		map.put("list", sysRoleController.retrieveList());
		sysRoleController.toLiuyan(liuyan);
		return "view/honor";
	}*/
	
	//查询
	@RequestMapping("productList")
	public String productList(ModelMap map) {
		map.put("list", productService.retrieveList());
		return "view/index";
	}
}
