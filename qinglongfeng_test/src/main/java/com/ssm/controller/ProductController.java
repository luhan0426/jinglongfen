package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.pojo.Product;
import com.ssm.service.ProductService;

@Controller
@RequestMapping("pricture")
public class ProductController {
	@Autowired
	private ProductService pdService;
	
	@RequestMapping("getPricture")
	public String getPricture(ModelMap map) {
		map.put("pricture", new Product());
		return "main/pricture";
	}
	@RequestMapping("toAdd")
	public String toAdd(Product product) {
		pdService.toAdd(product);
		return "redirect:/product/hover";
	}
}
