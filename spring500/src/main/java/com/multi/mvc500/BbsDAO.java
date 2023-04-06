package com.multi.mvc500;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class BbsDAO {
	@Autowired
	SqlSessionTemplate my;

	/*
	 * public ArrayList<BbsVO> list() {
	 * 
	 * return list;
	 * 
	 * }
	 * 
	 * public void delete(int no) {
	 * 
	 * }
	 * 
	 * public void update(BbsVO bag) {
	 * 
	 * }
	 */

	public int insert(BbsVO bag) {
		int result = my.insert("bbs.insert", bag);
		return result;
	}
	
	public int update(BbsVO bag) {
		int result = my.update("bbs.update", bag);
		return result;	
	}
	
	public int delete(int no) {
		int result = my.delete("bbs.delete", no);
		return result;
	}

	/*
	 * public BbsVO one(int no) {
	 * 
	 * return bag; }
	 */
}
