<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건올리기</title>

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
		
	</style>



</head>
<body>
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
		<section>
			<h1>물건올리기</h1>
			<div>
				<form method="post" action="/lesson04/quiz03_insert">
				<div class="d-flex">
					<div class="form-group col-2">
						<select class="form-control">
							<option>asdasd</option>
							<option>deded</option>
						</select>
					</div>
					<div class="form-group col-6">
						<input type="text" name="title" placeholder="제목" class="form-control">
					</div>
					<div class="form-group col-4 d-flex">
						<input type="text" name="price" class="form-control" placeholder="가격">
						<div class="input-group-prepend">
    		              <span class="input-group-text">원</span>
	               	 	</div>
					</div>
				</div>
				<div>
					<textarea rows="10"  class="form-control"></textarea>
				</div>
				<div>
					<div class="input-group-prepend">
    		              <span class="input-group-text">이미지URL</span>
	               	</div>
	               	<input type="text" class="form-control">
				</div>
			</div>
				</form>
			
			</div>
		</section>
	
</body>
</html>
