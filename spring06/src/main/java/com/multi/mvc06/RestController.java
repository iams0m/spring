package com.multi.mvc06;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	@RequestMapping("json1")
	@ResponseBody //요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄(views 안써도 됌.)
	// => {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
	public MemberVO json1() { //MemberVO : return되는 bag의 타입
	//public MemberVO json1(MemberVO bag) 으로 써주어도 됌.
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		return bag;
	}
	
	@RequestMapping("json2")
	@ResponseBody 
	public ArrayList<MemberVO> json2() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		MemberVO bag2 = new MemberVO();
		bag2.setId("root2");
		bag2.setPw("12342");
		bag2.setName("hong2");
		bag2.setTel("0112");
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("json3")
	@ResponseBody //요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄(views 안써도 됌.)
	// => {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
	public BbsVO json3() { //BbsVO : return되는 bag의 타입
		BbsVO bag = new BbsVO();
		bag.setNo(15);;;
		bag.setTitle("오늘은");;
		bag.setContent("수요일");
		bag.setWriter("apple");
		return bag;
	}
	
	@RequestMapping("json4")
	@ResponseBody 
	public ArrayList<BbsVO> json4() {
		BbsVO bag = new BbsVO();
		bag.setNo(15);
		bag.setTitle("오늘은");
		bag.setContent("수요일");
		bag.setWriter("apple");
		BbsVO bag2 = new BbsVO();
		bag2.setNo(16);
		bag2.setTitle("오늘은");
		bag2.setContent("목요일");
		bag2.setWriter("apple");
		
		ArrayList<BbsVO> list = new ArrayList<BbsVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("jsonResponse3")
	@ResponseBody //요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄(views 안써도 됌.)
	// => {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
	public MemberVO jsonResponse3() {
		MemberVO bag = new MemberVO();
		bag.setId("apple");
		bag.setPw("1234");
		bag.setName("park");
		bag.setTel("011");
		return bag;
	}
	
	@RequestMapping("jsonResponse5")
	@ResponseBody // 요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄,
	public MapVO kakaoMap() {
		MapVO bag = new MapVO();
		bag.setLat(37.5117);
		bag.setLon(127.0592);
		System.out.println(bag);
		return bag;
	}
	
	@RequestMapping("jsonResponse6")
	@ResponseBody
	public MapVO json22() {
		MapVO bag = new MapVO();
		bag.setLat(37.51);
		bag.setLon(127.06);
		
		System.out.println(bag);
		return bag;
	}
	
	@RequestMapping("jsonResponse7")
	@ResponseBody
	public ArrayList<ChartVO> json6() {
		ArrayList<ChartVO> list = new ArrayList<ChartVO>();
		
		ChartVO vo = new ChartVO();
		vo.setWork("공부");
		vo.setTime(10);
		list.add(vo);
		
		ChartVO vo2 = new ChartVO();
		vo2.setWork("휴식");
		vo2.setTime(5);
		list.add(vo2);
		
		ChartVO vo3 = new ChartVO();
		vo3.setWork("잠");
		vo3.setTime(7);
		list.add(vo3);
		
		return list;
	}
}
