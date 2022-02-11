package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/favorites_insert")
public class lesson04Quiz02Insert extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		String site = request.getParameter("site");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String insertQuery = "insert into `favorites`(`name`,`url`,`createdAt`,`updatedAt`)"
				+ "values('" + site + "', '" + url + "', now(), now())";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnection();
		
		response.sendRedirect("/lesson04/quiz02_1.jsp");
		
		
	}

}
