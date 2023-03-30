package com.multi.mvctest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import org.springframework.stereotype.Component;
@Component
public class WebtoonDAO {
	
	public ArrayList<WebtoonVO> list() {
		ResultSet rs = null; // 항목명 + 결과 데이터를 담고 있는 테이블

		// 가방들 넣어줄 큰 컨테이너 역할을 하는 부품 필요!
		// ArrayList<BbsVO> ==> BbsVO만 들어간 arraylist라는 의미
		ArrayList<WebtoonVO> list = new ArrayList<>();

		WebtoonVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "select * from webtoon";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			rs = ps.executeQuery(); // select문 전송시
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			// 1. 검색결과가 있는지 확인 : rs.next()
			while (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
				// true이면 있다라는 의미, false이면 없다라는 의미
				// System.out.println("검색결과 있음. 성공.");
				// 2. 값이 있다면, 각 컬럼에서 값들을 꺼내오자.
				bag = new WebtoonVO();
				bag.setId(rs.getString("id"));
				bag.setTitle(rs.getString("title"));
				bag.setCartoonist(rs.getString("cartoonist"));
				bag.setStar(rs.getString("star"));
				bag.setImg(rs.getString("img"));
				// 4. 가방을 더 커다란 컨테이너(ArrayList)에 넣자.
				list.add(bag);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함.
		// 검색결과가 있을 때는 bag에 데이터가 들어있음.
		// 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		return list;
	}
	
	public WebtoonVO one(String id) {
		ResultSet rs = null;// 항목명 + 결과 데이터를 담고 있는 테이블
		// 기본형(정수/실수/문자/논리)만 값으로 초기화
		// 나머지 데이터형(참조형)은 주소가 들어가있음
		// 참조형 변수를 초기화할 때는 null(주소가 없다라는 의미)
		WebtoonVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "select * from webtoon where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3.SQL문 부품(객체)으로 만들어주기.");

			rs = ps.executeQuery(); //select의 결과는 항목명 + Row 테이블!
			System.out.println("4.SQL문 오라클로 보내기 성공.");
			if (rs.next()) {;
				bag = new WebtoonVO();
				bag.setId(rs.getString("id"));
				bag.setTitle(rs.getString("title"));
				bag.setCartoonist(rs.getString("cartoonist"));
				bag.setStar(rs.getString("star"));
				bag.setImg(rs.getString("img"));
			} else {
				System.out.println("검색 결과가 없습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bag;
	}

	public int insert(WebtoonVO bag) {
		int result = 0;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "insert into webtoon values (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			// con부품으로 sql스트링에 있는 것 SQL부품으로 만들어주세요.
			// 가방에서 하나씩 꺼내서 쓰세요.
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getCartoonist());
			ps.setString(4, bag.getStar());
			ps.setString(5, bag.getImg());

			System.out.println("3.SQL문 부품(객체)으로 만들어주기.");

			result = ps.executeUpdate();
			System.out.println("4.SQL문 오라클로 보내기 성공.");
			if (result == 1) {
				System.out.println("데이터 입력 성공!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	public int delete(String id) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "delete from webtoon where id = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3.SQL문 부품(객체)으로 만들어주기.");

			result = ps.executeUpdate(); // 잘 인식하면 1
			System.out.println("4.SQL문 오라클로 보내기 성공.");
			if (result == 1) {
				System.out.println("작품 삭제 완료!");
			}else {
				System.out.println("작품 삭제 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int update(WebtoonVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.드라이버 설정 성공.");

			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2.mySQL 연결 성공.");

			String sql = "update webtoon set star = ? where id = ? ";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, bag.getStar());
			ps.setString(2, bag.getId());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			result = ps.executeUpdate();
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			if (result == 1) {
				System.out.println("수정 성공.");
			}else {
				System.out.println("없는 ID입니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
