<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
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
	input[type=text], input[type=number] {
		width: 100%;
	}
	input[type=submit], input[type=button] {
		width: 100px;
	}
</style>
</head>
<body>
	<main>
		<h2>회원 등록</h2>
		<form action="/Users/Write" method="get">
		  <table>
		    <tr>
		      <td>회원 아이디</td>
		      <td><input type="text" name="userid"  /></td>
		    </tr>
		    <tr>
		      <td>회원 비밀번호</td>
		      <td><input type="text" name="pwd"  /></td>
		    </tr>
		    <tr>
		      <td>회원 이름</td>
		      <td><input type="text" name="username" /></td>
		    </tr>
		    <tr>
   		      <td>회원 이메일</td>
		      <td><input type="text" name="useremail" /></td>
		    </tr>
		    <tr>
   		      <td>회원 포인트</td>
		      <td><input type="text" name="upoint" /></td>
		    </tr>
		    <tr>
   		      <td>회원 등록일</td>
		      <td><input type="text" name="regdate" /></td>
		    </tr>
		    <tr>
		      <td colspan="2">
		      	<input type="submit" value="추가" />
		      	<input type="button" value="목록" 
		      	onclick="window.location.href='/Users/List'"/>
		      </td>
		    </tr>
		  </table>
		</form>
	</main>
</body>
</html>