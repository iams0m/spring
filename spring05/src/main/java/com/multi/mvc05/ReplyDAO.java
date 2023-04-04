package com.multi.mvc05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;
@Component
public class ReplyDAO {

	public ArrayList<ReplyVO> list(int bbsno) {
		ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

		// 가방들 넣어줄 큰 컨테이너 역할을 하는 부품 필요!
		// ArrayList<ReplyVO> ==> ReplyVO만 들어간 arraylist라는 의미
		ArrayList<ReplyVO> list = new ArrayList<>();

		ReplyVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "select * from reply where bbsno = ?";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setInt(1, bbsno);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			rs = ps.executeQuery(); // select문 전송시
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			// 1. 검색결과가 있는지 확인 : rs.next()
			while (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
				// true이면 있다라는 의미, false이면 없다라는 의미
				// System.out.println("검색결과 있음. 성공.");
				// 2. 값이 있다면, 각 컬럼에서 값들을 꺼내오자.
				int no = rs.getInt(1);
				int bbsno2 = rs.getInt(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				// 검색결과를 검색화면 UI부분을 주어야 함.
				// 3. 가방을 만들어서 꺼내온 데이터를 넣자.
				bag = new ReplyVO();
				bag.setNo(no);
				bag.setBbsno(bbsno2);
				bag.setContent(content);
				bag.setWriter(writer);
				// 4. 가방을 더 커다란 컨테이너(ArrayList)에 넣자.
				list.add(bag);
			}
			// System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함.
		// 검색결과가 있을 때는 bag에 데이터가 들어있음.
		// 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		return list;

	}
	
	public ArrayList<ReplyVO> list2(String writer) {
		ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

		// 가방들 넣어줄 큰 컨테이너 역할을 하는 부품 필요!
		// ArrayList<ReplyVO> ==> ReplyVO만 들어간 arraylist라는 의미
		ArrayList<ReplyVO> list = new ArrayList<>();

		ReplyVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "select * from reply where writer = ?";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, writer);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			rs = ps.executeQuery(); // select문 전송시
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			// 1. 검색결과가 있는지 확인 : rs.next()
			while (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
				// true이면 있다라는 의미, false이면 없다라는 의미
				// System.out.println("검색결과 있음. 성공.");
				// 2. 값이 있다면, 각 컬럼에서 값들을 꺼내오자.
				int no = rs.getInt(1);
				int bbsno2 = rs.getInt(2);
				String content = rs.getString(3);
				String writer2 = rs.getString(4);
				// 검색결과를 검색화면 UI부분을 주어야 함.
				// 3. 가방을 만들어서 꺼내온 데이터를 넣자.
				bag = new ReplyVO();
				bag.setNo(no);
				bag.setBbsno(bbsno2);
				bag.setContent(content);
				bag.setWriter(writer2);
				// 4. 가방을 더 커다란 컨테이너(ArrayList)에 넣자.
				list.add(bag);
			}
			// System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함.
		// 검색결과가 있을 때는 bag에 데이터가 들어있음.
		// 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		return list;

	}
	
	public void insert(ReplyVO bag) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "insert into reply(bbsno, content, writer) values (?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, bag.getBbsno());
			ps.setString(2, bag.getContent());
			ps.setString(3, bag.getWriter());

			System.out.println("3.SQL문 부품(객체)으로 만들어주기.");

			ps.executeUpdate();
			System.out.println("4.SQL문 오라클로 보내기 성공.");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}