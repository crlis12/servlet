package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/favorites_delete")
public class lesson04Quiz02Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		
		String deleteQuery = "delete from `favorites` where `id`=" + id;
		
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnection();
		
		response.sendRedirect("/lesson04/quiz02_1.jsp");
		
		
	}

}
