<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 하기</title>
</head>
<body>

	<%
	double length = Integer.parseInt(request.getParameter("length"));
	String[] measureArr = request.getParameterValues("measure"); //체크된 값들이 여러개이기 때문에 배열로 값들을 가지고 온다.
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= (int)length %>cm</h2>
		<hr>
		<h2>
		<%
			if(measureArr != null){
				for(String measure : measureArr){
					if(measure.equals("inch")){
						out.println(length * 0.393701 +" in<br>" );
					}else if(measure.equals("yd")){
						out.println(length * 0.010936 + " yd<br>" );
					}else if(measure.equals("ft")){
						out.println(length * 0.032808 + " ft<br>" );
					}else if(measure.equals("m")){
						out.println(length * 0.01 + " m<br>");
					}
					
				}
			}
		%>
		</h2>
		
	</div>
</body>
</html>