package com.multi.mvc901;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	
	//mybatis 싱글톤 객체를 찾아서 주소를 넣어주세요.
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(MemberVO bag) {
		int result = my.insert("member.create", bag);
		//                      namespace.id
		return result;
	}
	
	public int update(MemberVO bag) {
		int result = my.update("member.up", bag);
		return result;	
	}
	
	public int delete(String id) {
		int result = my.delete("member.del", id);
		return result;
	}
	
	
	
	/*
	 * public int login(MemberVO bag) {
	 * 
	 * return result; }
	 * 
	 * public ArrayList<MemberVO> list() {
	 * 
	 * return list;
	 * 
	 * }
	 * 
	 * public int delete(String id) { return result; }
	 * 
	 * public int update(MemberVO bag) {
	 * 
	 * return result; }
	 */


	/*
	 * public MemberVO one(String id) {
	 * 
	 * return bag; }
	 */
	
	public MemberVO one(String id) {
		MemberVO bag = my.selectOne("member.one", id);
		return bag;
	}
}
