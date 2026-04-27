<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet" /> 
<style>
	table {width:100%}
	td {
		padding : 5px;
		text-align : center;
	}
	tr:first-child {
		background-color : black;
		color:white; 
		
		td {
			border : 1px solid white;
		}
	}
	tr:nth-of-type(2) td {
		text-align: right;
		padding-right: 20px;
	}
</style>
</head>
<body>
	<main>
	  <h2>회원 목록 ${msg}</h2>
	  <table>
	  	<tr>
		  <td>userid</td>
  		  <td>pwd</td>
  		  <td>username</td>
  		  <td>email</td>
  		  <td>upoint</td>
  		  <td>regdate</td>
  		  <td>삭제</td>
  		  <td>목록</td>
	  	</tr>
		  <tr>
 		    <td colspan="5">
 			    [<a href="/Users/WriteForm">회원등록</a>]&nbsp;&nbsp;&nbsp;
 			    [<a href="">회원등록2</a>]&nbsp;&nbsp;&nbsp;
 			    [<a href="/">Home</a>]
 		    </td>
	  	</tr>
	  	<c:forEach var="user" items="${userList}">
		  	<tr>
	  		  <td>${ user.userid }</td>
	  		  <td>${ user.pwd }</td>
	  		  <td>${ user.username }</td>
	  		  <td>${ user.email }</td>
	  		  <td>${ user.upoint }</td>
	  		  <td>${ user.regdate }</td>
	  		  <td><a href="">삭제</a></td>
	  		  <td><a href="">수정</a></td>
		  	</tr>
	  	</c:forEach>
	  </table>
	</main>
</body>
</html>









