package com.multi.mvc05;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@RequestMapping("insert2.multi")
	public void insert(BbsVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update2.multi")
	public void update(BbsVO bag, BbsDAO dao) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	@RequestMapping("delete2.multi")
	public void delete(int no, BbsDAO dao) {
		System.out.println("delete요청됨.");
		System.out.println(no);
		dao.delete(no);
	}
	@RequestMapping("one2.multi")
	public void one(int no, Model model) {
		System.out.println("one요청됨.");
		System.out.println(no);
		BbsVO bag = dao.one(no); //상세 페이지
		//bbs상세페이지 만들 때 reply list도 함께 가지고 와야함
		ArrayList<ReplyVO> list = dao2.list(no); //댓글 리스트
		model.addAttribute("list", list);
		model.addAttribute("bag", bag);
	}
	@RequestMapping("list2.multi")
	public void list(Model model) {
		System.out.println("list요청됨.");
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
	@RequestMapping("list5")
	public void list5(Model model) {
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
	@RequestMapping("list8")
	public void list8(String writer, Model model) {
		System.out.println(writer);
		ArrayList<BbsVO> list = dao.list(writer);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("one6")
	public void one5(int no, Model model) {
		System.out.println(no);
		BbsVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}
}