package com.multi.mvc700;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component
public class TourDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(TourVO bag) {
		System.out.println("------" + my);
		int result = my.insert("tour.insert", bag);
		return result;
	}

}
