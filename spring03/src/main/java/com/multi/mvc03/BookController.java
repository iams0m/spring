package com.multi.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping("delete3.multi")
	public void delete(int id) {
		System.out.println("delete요청됨.");
		System.out.println(id);
		System.out.println(dao);
		dao.delete(id);
	}
	
	@RequestMapping("update3.multi")
	public void update(BookVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.update(bag);;
	}
	
	@RequestMapping("insert3.multi")
	public void insert(BookVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("one3.multi")
	public void one(int id, Model model) {
		System.out.println("one요청됨.");
		BookVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
}
