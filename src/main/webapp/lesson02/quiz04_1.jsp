<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<title>계산 결과</title>
</head>
<body>
	<%
		int firstnum = Integer.parseInt(request.getParameter("firstnum"));
		String calculate = request.getParameter("calculate");
		int secondnum = Integer.parseInt(request.getParameter("secondnum"));
		double result = 0;
		String printCalculate = null;
		switch(calculate){
		case "plus":
			result = (double)firstnum + secondnum;
			printCalculate = "+";
			break;
		case "minus":
			result = (double)firstnum - secondnum;
			printCalculate = "-";
			break;
		case "multiple":
			result = (double)firstnum * secondnum;
			printCalculate = "*";
			break;
		case "devide":
			result = (double)firstnum / secondnum;
			printCalculate = "/";
			break;
		}		
	%>
	
	<div class="container">
		<h1>계산결과</h1>
		<span class="display-3"><%= firstnum %> <%=printCalculate %> <%= secondnum %> = <span class="text-primary"><%=result %></span></span>
	</div>
	
</body>
</html>