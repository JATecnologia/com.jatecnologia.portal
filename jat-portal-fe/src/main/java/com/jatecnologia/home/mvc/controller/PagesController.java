package com.jatecnologia.home.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class PagesController {	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String showHome(){
		
		////
		System.out.println("blabla");
		
		return "pages/home.jsp";
	}
	@RequestMapping(value="/contact-us")
	public String showContactUs(){
		return "pages/contact-us.jsp";
	}
	
	
	@RequestMapping(value="/twitter")
	public String showTwitter(){
		return "pages/twitter.jsp";
	}

}
