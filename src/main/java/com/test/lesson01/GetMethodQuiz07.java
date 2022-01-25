package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class GetMethodQuiz07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		String address = request.getParameter("address");
		String payCard = request.getParameter("payCard");
		int price = Integer.parseInt(request.getParameter("price"));

		out.print("<html><head><title>주문내역</title></head><body>");
		
		if(address.startsWith("서울시") == false) {
			out.print("배달 불가 지역입니다.");
		}else if(payCard.equals("신한카드")) {
			out.print("결제 불가 카드입니다.");
		}else {
			out.print(address + " <b>배달 준비중</b><br>");
			out.print("결제금액: " + price + "원");
		}
		
		out.print("</body></html>");
	}

}
