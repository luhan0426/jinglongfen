package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("test")
public class TestController {
	 @RequestMapping("find.do")
	  private String find() {

	    return "main";
	  }

	  @RequestMapping("top.do")
	  private String top() {

	    return "top";
	  }

	  @RequestMapping("left.do")
	  private String left() {

	    return "left";
	  }

	  @RequestMapping("right.do")
	  private String right() {

	    return "right";
	  }

	  @RequestMapping("culture.do")
	  private String culture() {

	    return "culture";
	  }

	  @RequestMapping("honor.do")
	  private String honor() {

	    return "honor";
	  }

	  @RequestMapping("product.do")
	  private String product() {

	    return "product";
	  }

	  @RequestMapping("success.do")
	  private String success() {

	    return "success";
	  }

	  @RequestMapping("contact.do")
	  private String contact() {

	    return "contact";
	  }

}
