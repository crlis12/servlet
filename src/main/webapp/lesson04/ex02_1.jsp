<%@page import="java.sql.*"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자들</title>
</head>
<body>


<%
	//DB연결
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();

	String selectQuery = "select * from `new_user`";
	ResultSet result = mysql.select(selectQuery);
%>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>자기소개</th>
				<th>이메일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			while(result.next()){
				
			
		%>
			<tr>
				<td><%=result.getInt("id")%></td>
				<td><%=result.getString("name")%></td>
				<td><%=result.getString("yyyymmdd")%></td>
				<td><%=result.getString("introduce")%></td>
				<td><%=result.getString("email")%></td>
				<td><a href="/lesson04/user_delete?id=<%=result.getInt("id") %>">삭제하기</a></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
</body>
</html>