package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");

		PrintWriter out = response.getWriter();
		
		if(userMap.get("id").equals(userName) && userMap.get("password").equals(userPassword)) {
			out.print(userName + "님 환영합니다!");
		}else if(userMap.get("id").equals(userName) == false) {
			out.print("아이디가 틀렸습니다.");
		}else if(userMap.get("password").equals(userPassword) == false) {
			out.print("비밀번호가 틀렸습니다.");
		}
	}
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	    
	    
	};

}
