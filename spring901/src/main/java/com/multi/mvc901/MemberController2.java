package com.multi.mvc901;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에서 제어하는 역할로 등록! dependency
public class MemberController2 {
	
	@Autowired
	MemberDAO dao; //전역변수(글로벌 변수) 

	@RequestMapping("insert")
	public void insert(MemberVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);

		dao.insert(bag);
	}
	
	@RequestMapping("update")
	public void update(MemberVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("delete")
	public void delete(String id) {
		System.out.println("delete요청됨.");
		System.out.println(id);
		dao.delete(id);
	}
	
	@RequestMapping("one")
	public void one(String id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		MemberVO bag = dao.one(id);
		//views 아래 one.jsp까지 전달할 데이터를 model 객체를 이용해서
		//속성으로 지정합니다.
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("one5")
	public void one5(String id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		//MemberVO bag = dao.one(id);
		//bag에 검색결과 다 들어있음.
		//views아래 one.jsp로 쓸 수 있도록 설정해주어야 함.
		//model.addAttribute("bag", bag);
		//views까지 전달할 속성으로 추가해주세요. 
	}
	
	
	@RequestMapping("list")
	public void list(Model model) {
		//Model은 컨트롤러의 list를 views/list.jsp까지만 전달할 수 있는 객체 
		List<MemberVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	//https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%9E%90%EB%8F%99%EC%B0%A8
	
	
	
	
	
}
