<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>창한's 홈페이지</title>
</head>
<body>
	<%
		String userID=null;
		if(session.getAttribute("userID") !=null){
			userID=(String) session.getAttribute("userID");
		}
	%>
	<!-- 내비게이션 바 -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
			</button>
			<a class="navbar-brand" href="main.jsp">창한스 홈페이지</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
				<li><a href="http://naver.com">네이버</a></li>
				<li><a href="https://canvas.ssu.ac.kr/">스마트캠퍼스 대시보드</a></li>				
				<li><a href="http://aix.ssu.ac.kr/main">AI융합학부 홈페이지</a></li>
			
			</ul>
			<%
				if(userID==null){
			%>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				}else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<% 		
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="align:center; border:1px solid #dddddd">
				<thead>
				<tr>
					<th style="background-color:#eeeee; text-align:center">번호</th> 
					<th style="background-color:#eeeee; text-align:center">제목</th> 
					<th style="background-color:#eeeee; text-align:center">작성자</th> 
					<th style="background-color:#eeeee; text-align:center">학번</th> 
					<th style="background-color:#eeeee; text-align:center">작성일</th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td style="background-color:#eeeee; text-align:center">1</td>
						<td style="background-color:#eeeee; text-align:center">이창한 미래 시간표</td>
						<td style="background-color:#eeeee; text-align:center">이창한</td>
						<td style="background-color:#eeeee; text-align:center">20180392</td>
						<td style="background-color:#eeeee; text-align:center">2022-02-25</td> 
					</tr>
				</tbody>
			</table>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>