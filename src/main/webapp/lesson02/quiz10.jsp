<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>
	<%
	// 현재 날짜 구하기
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-M"); //오늘 날짜
	SimpleDateFormat sdfY = new SimpleDateFormat("yyyy"); // 년도
	SimpleDateFormat sdfM = new SimpleDateFormat("MM"); // 월

	// 년 월 int로 변환
	int year = Integer.parseInt(sdfY.format(today.getTime())); //년도
	int month = Integer.parseInt(sdfM.format(today.getTime())); // 월

	
	//해당 월 시작 요일 구하기
	LocalDate date = LocalDate.of(year, month, 1); // 해당 월 수 날짜 검사 ex) 0000-00-01
	DayOfWeek day = date.getDayOfWeek();
	
	int dayNumber = day.getValue(); // 월요일: 1 화요일: 2 ... 일요일: 7
	int endDD; //끝나는 일수
	
	
	//30일 까지인지 31일 짜기 인지 구하기
	// 윤년 구하기
	if (month % 2 == 0) {
		endDD = 30; //끝나는 일수
		if (month > 8) { //8월 부터 짝수달 31일 까지 
			endDD = 31;
		}
		if (month == 2) { // 윤년 구하기
			if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
				endDD = 29;
			} else {
				endDD = 28;
			}
		}
	} else {
		endDD = 31;
	}
	%>
	
	<div class="container  text-center">
		<h1><%=year + "-" + month%></h1>
		<table class="table">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
				int days = 1; // 일
				for (int i = 0; i < 6; i++) {
				%>
				<tr>
					<%
					for (int j = 0; j < 7; j++) {
						if (days > endDD) {	//일이 해당 월 일수 보다 크면 break
							break;
						}
						if (dayNumber >= 1) { // 해당 월 1일이 몇요일 부터인지 검사
							out.print("<td>" +"</td>");
							dayNumber--;
							continue;
						}
					%>
					<td class="display-4"><%=days%></td>
					<%
						days++;
					}
					%>
				
				<tr>
					<%
				}
					%>
			</tbody>
		</table>
	</div>
</body>
</html>