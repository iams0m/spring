package com.multi.mvc05;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyDAO dao; //100번 주소
	
	@RequestMapping("list6")
	public void list6(int bbsno, Model model) {
		System.out.println(bbsno);
		ArrayList<ReplyVO> list = dao.list(bbsno);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list9")
	public void list8(String writer, Model model) {
		System.out.println(writer);
		ArrayList<ReplyVO> list = dao.list2(writer);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("insert4")
	public void insert(ReplyVO bag) {
		System.out.println(bag);
		dao.insert(bag);
	}
}
