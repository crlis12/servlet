package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {

	private static MysqlService mysqlService = null;

	private String url = "jdbc:mysql//localhost:3306/boram_211118"; // DB서버 주소 도메인 뒤에 접속할 데이터 베이스명까지 적는다.
	private String id = "root"; // 아이디
	private String pw = "root"; // 비밀번호 본인이 설정한 DB 비번

	private Connection conn = null;
	private Statement statement; // 쿼리를 연결할 수 있는 객체
	private ResultSet res;

	// Singleton 패턴: MysqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	// DB연결을 여러 객체에서 하지 않도록 하기 위해서

	public static MysqlService getInstance() { // static이 있어야 한다 없으면 new 사용
		if (mysqlService == null) { // 아무것도 들어 있지 않다면 한번 new를 만든다
			mysqlService = new MysqlService();
		}

		return mysqlService; // 한번이라도 만들었다면 mysqlService 리턴해준다.
	}

	public void connection() {
		// 1. 드라이버 메모리에 로딩
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// 2. DB connection
			conn = DriverManager.getConnection(this.url, this.id, this.pw); //conn에 DB로그인 정보를 담는다
			// 3. statement: DB와 쿼리를 실행하기 위한 준비
			statement = conn.createStatement(); //쿼리를 보내주기 위한것
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	public void disconnection() {	//DB연동 해제
		try {
			// 연결 끊기
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public ResultSet select(String query) throws SQLException { // query문 작성 ,  사용자가 에러를 직접 처리할 수 있게 throws
		res = statement.executeQuery(query);
		return res;
	}
	
	public void update(String query) throws SQLException { // update delete 행을 변경하고 싶을 때 사용
		statement.executeUpdate(query);
	}
}
