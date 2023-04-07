package com.multi.mvc700;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TourController {
	
	@Autowired
	TourDAO dao;
	
	@RequestMapping("insert")
	public void insert(TourVO bag) {
		dao.insert(bag);
	}

}
