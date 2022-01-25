package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz04")
public class UrlMappingQuiz04 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		out.print("<html><head><title></title></head><body>");
		out.print("<ul>");
		for (int i = 1; i <= 30; i++) {
			out.print("<li><b>" + i + "번쨰 리스트" + "</b></li>");
			out.print("\n");
		}
		out.print("</ul>");
		out.print("</body></html>");
	}

}
