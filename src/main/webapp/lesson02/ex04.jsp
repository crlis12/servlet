<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		//Map을 테이블로 표현하기
		//{"korean"=85 , "english"=72 , "math"=90, "science"=100}
		Map<String, Integer> map = new HashMap<>();
		map.put("korean", 85);
		map.put("english", 72);
		map.put("math", 90);
		map.put("science", 100);
	%>
	<table border="1">
		<%
			Iterator<String> iter = map.keySet().iterator(); //키들의 묶음 키값들을 가지고 온다	keySet() 순서가 없다.
			
			while(iter.hasNext()){
				String key =iter.next(); // korean, english .. 키값들이 돈다
		%>
	
			<tr>
				<th><%--  <%=key %> --%>
					<%
						if(key.equals("korean")){
							out.print("국어");
						}else if(key.equals("english")){
							out.print("영어");
						}else if(key.equals("math")){
							out.print("수학");
						}else if(key.equals("science")){
							out.print("과학");
						}
					%>
				</th>
				<td><%=map.get(key) %></td>  <!--key값의 value값들  -->
			</tr>
			
		<%
			} // 테이블안에 map이 반복되기 위해 while를 여기서 닫아 준다.
		%>
	</table>
	
	
</body>
</html>