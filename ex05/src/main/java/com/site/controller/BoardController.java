package com.site.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/index")
	public String index() {
		return "/index";
	}
	
	
	@GetMapping("/board")
	public Map<String,Object> repage(){
		Map<String,Object> map = new HashMap<String,Object>();
		String sno = "1";
		String stitle = "제목"; 
		String sdate = "0501";
		String sname = "이름";
		String count = "1";
		
		
		return map;
	}
	
}
