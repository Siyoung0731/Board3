<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
<link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet" /> 
<style>
	table {
		witdh : 100%
	}
	td {
		padding: 5px 10px;
		text-align: center;
		&:nth-of-type(1) {
			background-color: black;
			color:white;
			border:1px solid white;
		}
	}
	tr:last-child > td {
		background-color: white;
		border: 1px solid black;
	}
	input[type=text], input[type=number], input[type=password] {
		width: 100%;
	}
	input[type=submit], input[type=button] {
		width: 100px;
	}
</style>
</head>
<body>
	<main>
		<h2>회원 수정</h2>
		<form action="/Users/Update" method="get">
		  <table>
		    <tr>
		      <td>회원 아이디</td>
		      <!-- readonly : 변경 불가능 -->
		      <td><input type="text" name="userid" value="${user.userid}" readonly/></td>
		    </tr>
   		    <tr>
		      <td>회원 암호</td>
		      <td><input type="password" name="pwd" value="${user.pwd}" /></td>
		    </tr>
		    <tr>
		      <td>회원 이름</td>
		      <td><input type="text" name="username" value="${user.username}" /></td>
		    </tr>
		    <tr>
		      <td>이메일</td>
		      <td><input type="text" name="email" value="${user.email}" /></td>
		    </tr>
		    <tr>
		      <td colspan="2">
		      	<input type="submit" value="수정" />
		      	<input type="button" value="목록" 
		      	onclick="window.location.href='/Users/List'" />
		      </td>
		    </tr>
		  </table>
		</form>
	</main>
</body>
</html>