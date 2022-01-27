<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

	<%!//1번
	public int sumF() {
		int N = 50;
		int sum = 0;
		for (int i = 1; i <= N; i++) {
			sum += i;
		}
		return sum;
	}%>
	<h1>
		1부터 50까지의 합은
		<%=sumF()%>
		입니다.
	</h1>

	<%
	// 2번
	int[] scores = { 80, 90, 100, 95, 80 };
	int sum = 0;
	double avg = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	avg = (double) sum / (double) scores.length;
	%>

	<h1>
		평균 점수는
		<%=avg%>
		입니다.
	</h1>

	<%
	List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += 10;
		}
	}
	%>

	<h1>
		채점 결과는
		<%=score%>점 입니다.
	</h1>


	<%
	// 4번
	String birthDay = "20010820";

	String year = birthDay.substring(0, 4);

	int age = 2022 - Integer.parseInt(year);
	%>
	<h1><%=birthDay%>의 나이는
		<%=age + 1%>세 입니다.
	</h1>





</body>
</html>