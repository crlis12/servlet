package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethod05 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");

		PrintWriter out = response.getWriter();

		out.print("<html><head><title>회원정보</title></head><body>");

		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("테스트");
		out.print("노트북 테스트");
		out.print("</table></body></html>");

		
	}

}
