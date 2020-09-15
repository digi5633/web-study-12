<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 게시판 </title>
		<link rel="stylesheet" type="text/css" href="css/shopping.css">
		<!-- <script type="text/javascript" src="script/board.js"></script> -->
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript">
			$(function() {
			    $('#check').on("click", function() {
			    	
			        if ($('#pass').val().length == 0) {
			            alert("비밀번호를 입력하세요.");
			            return false;
			        }
			        
			    });
			    
			});
		
		</script>
	</head>
	
	<body>
	<div align="center">
	<h1>비밀번호 확인</h1>
		<form action="boardCheckPass.do" name="frm" method="get">
			<input type="hidden" name="num" value="${param.num}">
			<table style="width: 80%">
				<tr>
					<th>비밀번호</th>
					<td>
						<input id="pass" type="password" name="pass" size="20">
					</td>
				</tr>
			</table>
			<br>
			<input id="check" type="submit" value="확인">
			<br><br>
			${message}
		</form>
	</div>
	</body>
</html>