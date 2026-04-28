<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write2</title>
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
		<h2>사용자 등록 ${msg} </h2>
		<form action="/Users/Write2" method="get">
		  <table>
		    <tr>
		      <td><span class="red">*</span>아이디</td>
		      <td><input type="text" name="userid"  /></td>
		    </tr>
		    <tr>
		      <td><span class="red">*</span>비밀번호</td>
		      <td><input type="password" name="pwd" id="pwd" /></td>
		    </tr>
   		    <tr>
		      <td><span class="red">*</span>비밀번호 확인</td>
		      <td><input type="password" id="pwd2" /></td>
		    </tr>
		    <tr>
		      <td><span class="red">*</span>이름</td>
		      <td><input type="text" name="username" /></td>
		    </tr>
		    <tr>
   		      <td>이메일</td>
		      <td><input type="text" name="email" /></td>
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
	<!-- JavaScript 코딩 : client validation -->
	<script>
		const formEl = document.querySelector('form');	
		const useridEl = document.querySelector('[name="userid"]');	
		const pwdoldEl = document.querySelector('#pwdold');	
		const pwdEl = document.querySelector('#pwd');	
		const pwd2El = document.querySelector('#pwd2');	
		const usernameEl = document.querySelector('[name="username"]');	
		formEl.addEventListener('submit', function(e){
			
			// 아이디값 체크
			if(useridEl.value.trim() == ''){
				alert('아이디를 입력하세요')
				useridEl.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			} 
			// 옛날비밀번호 입력 체크
			if(pwdoldEl.value.trim() == ''){
				alert('옛날 비밀번호를 입력하세요')
				pwdoldEl.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			} 
			// 옛날비밀번호 != 조회된 비밀번호 user.pwd 체크(실무 사용 안함)
			if(pwdoldEl.value != '${user.pwd}'){
				alert('현재 비밀번호와 일치하지 않습니다.')
				pwdoldEl.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			} 
			// 비밀번호 값 체크
			if(pwdEl.value.trim() == ''){
				alert('비밀번호를 입력하세요')
				pwdEl.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			}
			// 비밀번호 확인 값 체크
			if(pwd2El.value.trim() == ''){
				alert('비밀번호를 다시 입력하세요')
				pwd2El.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			}
			// 비밀번호와 비밀번호 확인 같은지 체크
			if(pwdEl.value != pwd2El.value){
				alert('비밀번호가 일치하지 않습니다')
				pwd2El.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			}
			// 이름 값 체크
			if(usernameEl.value.trim() == ''){
				alert('이름을 입력하세요')
				usernameEl.focus();
				e.preventDefault() // Event 취소
				e.stopPropagation() // Event 버블링 방지
				return;
			}
		});
	</script>
</body>
</html>






















