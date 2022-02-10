package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01") // 항상 / 시작
public class lesson04Ex01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");

		// DB 접속 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection(); // DB연결

		// insert query
		String insertQuery = "insert into `used_goods` (`sellerId` , `title` , `description` , `price`)\r\n"
				+ "values(5 , '고양이 간식 팝니다.' , '고양이가 입맛이 까다로워서 잘 안먹어요ㅠ', 2000)";
		try {
			mysql.update(insertQuery);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// select query
		String selectQuery = "select * from `used_goods`"; // query문으로 테이블을 가지고 온다

		// 결과 출력
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultset = mysql.select(selectQuery);
			while (resultset.next()) { // 결과 행이 있는 동안 수행
				out.println(resultset.getInt("id"));
				out.println(resultset.getString("title"));
				out.println(resultset.getString("description"));
				out.println(resultset.getInt("price"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// DB 연결 해제
		mysql.disconnection();
	}

}
