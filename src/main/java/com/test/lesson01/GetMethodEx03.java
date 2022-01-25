package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		String userId = request.getParameter("user_id"); //String으로 넘어온다
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("GET Method 호출");
//		
//		out.println("user_id: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		//JSON(Javascript Object Notation)으로 response 구성하기
		// {"user_id":"crlis" , "name":"이창렬","age": 24}
		
		out.print("{\"user_id\":\"" + userId + "\",\"name\":\""+ name +"\",\"age\":\""+ age + "\"}");
	}
}
