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
public class BoardController {

	@RequestMapping("/board1")
	public void board(Model model) {
		model.addAttribute("sno",1);
		model.addAttribute("stitle","게시글 제목");
		model.addAttribute("sname","홍길동");
		model.addAttribute("sdate","2020-05-01");
		model.addAttribute("shit",1);
	}
	
	@ResponseBody
	@RequestMapping("/ajaxBoard")
	public Map<String,Object> board1(@RequestParam("sno") String sno,@RequestParam("stitle") String stitle,@RequestParam("sname") String sname,@RequestParam("sdate") String sdate,@RequestParam("shit") String shit){
		Map <String, Object>map = new HashMap<String, Object>();
		
		map.put("sno", sno);
		map.put("stitle", stitle);
		map.put("sdate", sdate);
		map.put("sname", sname);
		map.put("shit", shit);
		return map;
	}
	
}
