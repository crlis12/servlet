<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>

<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String[] foodArr = request.getParameterValues("food"); //값이 여러개이기 때문에 배열로 가지고 온다 .getParameterValues
	String fruit = request.getParameter("fruit");
	
%>

<table border="1">
	<tr>
		<th>별명</th>
		<td><%=nickname %></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><%=hobby %></td>
	</tr>
	<tr>
		<th>선호하는 동물</th>
		<td><%=animal %></td>
	</tr>
	<tr>
		<th>선호하는 음식</th>
		<td><%-- <%= foodArr %> --%>
			<%
				if(foodArr != null){
					String result = "";
					for(String food : foodArr){
						result += food + ","; //"민트초코,번데기"
					}
					// 맨 뒤에 붙은 , 제거
					// ex) ab ab만 가져오려면 substring(0,2)
					result = result.substring(0, result.length() - 1);
					out.print(result);
				}
			%>
		</td>
	</tr>
	<tr>
		<th>선호하는 과일</th>
		<td><%=fruit %></td>
	</tr>
	
	
	

</table>

</body>
</html>