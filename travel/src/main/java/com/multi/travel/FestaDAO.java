package com.multi.travel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FestaDAO {
	
	//mybatis 싱글톤 객체를 찾아서 주소를 넣어주세요.
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(FestaVO bag) {
		int result = my.insert("festa.create", bag);
		return result;
	}
	
	public int delete(String title) {
		int result = my.delete("festa.del", title);
		return result;
	}
	
	public int update(FestaVO bag) {
		int result = my.update("festa.up", bag);
		return result;	
	}
	
	public FestaVO one(String title) {
		FestaVO bag = my.selectOne("festa.one", title);
		return bag;
	}
	
	public List<FestaVO> list() {
		List<FestaVO> list = my.selectList("festa.all");
		return list;
	}
}
