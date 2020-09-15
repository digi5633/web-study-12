<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				$('#add').on("click", function() {
							
					if ($('#name').val() == "") {
						alert("작성자를 입력하세요.");
						return false;
					}
					
					if ($('#pass').val() == "") {
						alert("비밀번호를 입력하세요.");
						return false;
					}
					
					if ($('#title').val() == "") {
						alert("제목을 입력하세요.");
						return false;
					}
					
					var addBoard = {
			                pass:$('#pass').val(),
							name:$('#name').val(),
			                email:$('#email').val(),
			                title:$('#title').val(),
			                content:$('#content').val()
			                };
	
					$.ajax({
						type : "post",
						url : "boardWrite.do",
						cache : false,
						data : JSON.stringify(addBoard),
						complete : function(data) {
							alert("등록 되었습니다.");
							window.location.href="boardList.do";
						}
						
					});

				});
				
				$('#reset').on("click", function() {
	                $('#pass').val(""),
					$('#name').val(""),
	                $('#email').val(""),
	                $('#title').val(""),
	                $('#content').val("")
	                
				});
				
				$('#list').on("click", function() {
					 if (confirm("게시글 리스토로 이동 하시겠습니까?") == true) {	// 확인
						 location.href="boardList.do";
				    } else {	// 취소
				    	return false;
				    }
					 
				});
				
			});
			
		</script>
	</head>
	
	<body>
		<div id="wrap" align="center">
		<h1> 게시글 등록 </h1>
		<table>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="name" id="name" > * 필수</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" id="pass">
					* 필수 (게시물 수정 삭제시 필요합니다.)</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" size="70" name="title" id="title"> * 필수</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="70" rows="15" name="content" id="content"></textarea></td>
			</tr>
		</table>
		<br><br>
			<input id="add" type="submit" value="등록"> &nbsp;&nbsp;
			<input id="reset" type="reset" value="다시 작성"> &nbsp;&nbsp;
			<input id="list" type="button" value="목록">
		</div>
	</body>
</html>