package com.multi.mvctest;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebtoonController {
	
	@Autowired
	WebtoonDAO dao;
	
	@RequestMapping("one4.multi")
	public void one(String id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		WebtoonVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	@RequestMapping("list4.multi")
	public void list(Model model) {
		System.out.println("list요청됨.");
		ArrayList<WebtoonVO> list = dao.list();
		model.addAttribute("list", list);
	}
}
