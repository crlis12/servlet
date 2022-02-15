<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>


<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style>
		header{
			background-color: orange;
			height: 130px;
		}
		section {
			flex-wrap: wrap;
			height: 500px;
		}
		nav{
			font-size: 20px;		
		}
		.product{
			border: 3px solid orange;
			height: 230px;
		}
		.product:hover{
			background-color: #FAEBD7; 
		}
		
		.product_img{
			height: 120px;
		}
		.product_price{
			color: gray;
		}
		.user_name{
			color: orange;
		}
	</style>
	
	
</head>
<body>
<%
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	String selectQuery = "select A.* , B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId order by B.id";
	ResultSet result = mysql.select(selectQuery);
	
	
%>


	<div class="container">
		<header class="text-center">
			<div class="pt-3">
				<h1 class="font-weight-bold text-white">HONG당무 마켓 <h1>
				<nav class="w-100 pt-2">
					<ul class="nav nav-fill">
						<li class="nav-item"><a href="#" class="nav-link text-white">리스트</a></li>
						<li class="nav-item"><a href="#" class="nav-link text-white">물건 올리기</a></li>
						<li class="nav-item"><a href="#" class="nav-link text-white">마이 페이지</a></li>
					</ul>
				</nav>
			</div>
		</header>
		<section class="d-flex justify-content-around align-items-center">
			<%
				while(result.next()){
					
				
			%>
				<div class="product col-3 m-2  mt-3">
						<div class="product_img"><img alt="제품 이미지" src="<%=result.getString("pictureUrl") %>" width="250" height="120" class="mt-2"></div>
						<div class="mt-3">
							<div class="product_title font-weight-bold"><%=result.getString("title") %></div>
							<div class="product_price"><%=result.getInt("price") %>원</div>
							<div class="user_name"><%=result.getString("nickname") %></div>
						</div>
				</div>
			<%
				}
			%>
			
		</section>
	
	</div>
	
	<%
		mysql.disconnection();
	%>
</body>
</html>