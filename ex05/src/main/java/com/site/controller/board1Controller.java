package com.site.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class board1Controller {
	
	@RequestMapping("/board1")
	public String index(Model model) {
		model.addAttribute("sno",1);
		model.addAttribute("stitle","게시글 제목");
		model.addAttribute("sname","홍길동");
		model.addAttribute("sdate","2020-05-01");
		model.addAttribute("count",1);
		return "/board1";
	}
	
	@GetMapping("/board2")
	public Map<String,Object> board2(){
		Map<String,Object> map = new HashMap<String,Object>();
		String sno = "1";
		String stitle = "제목"; 
		String sdate = "0501";
		String sname = "이름";
		String count = "1";
		
		map.put("sno", sno);
		map.put("stitle", stitle);
		map.put("sdate", sdate);
		map.put("sname", sname);
		map.put("count", count);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/ajaxBoard")
	public Map<String, Object> board2(@RequestParam("sno") String sno, @RequestParam("stitle") String stitle,@RequestParam("sdate") String sdate,@RequestParam("sname") String sname,@RequestParam("count") String count){
	Map<String, Object> map =new HashMap<String, Object>();
	map.put("sno",sno);
	map.put("sdate",sdate);
	map.put("stitle",stitle);
	map.put("sname",sname);
	map.put("count",count);
	return map;
	}
}
