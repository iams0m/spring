package com.multi.travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FestaController {

	@Autowired
	FestaDAO dao; // 전역변수(글로벌 변수)

	@RequestMapping("insert")
	public void insert(FestaVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		dao.insert(bag);
	}

	@RequestMapping("update")
	public void update(FestaVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}

	@RequestMapping("delete")
	public void delete(String title) {
		System.out.println("delete요청됨.");
		System.out.println(title);
		dao.delete(title);
	}

	@RequestMapping("one")
	public void one(String title, Model model) {
		System.out.println("one요청됨.");
		System.out.println(title);
		FestaVO bag = dao.one(title);
		// views 아래 one.jsp까지 전달할 데이터를 model 객체를 이용해서
		// 속성으로 지정합니다.
		model.addAttribute("bag", bag);
	}

	@RequestMapping("list")
	public void list(Model model) {
		// Model은 컨트롤러의 list를 views/list.jsp까지만 전달할 수 있는 객체
		List<FestaVO> list = dao.list();
		model.addAttribute("list", list);
	}

}
