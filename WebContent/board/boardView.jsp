<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				$('#update').on("click", function() {
					 if (confirm("게시글 수정 하시겠습니까?") == true) {	// 확인
						 open_win("boardCheckPassForm.do?num=${getBoard.num}", "update");
				    } else {	// 취소
				    	return false;
				    }
				
				});
				
				$('#delete').on("click", function() {
					 if (confirm("게시글 삭제 하시겠습니까?") == true) {	// 확인
						 open_win("boardCheckPassForm.do?num=${getBoard.num}", "delete");
				    } else {	// 취소
				    	return false;
				    }
				
				});
				
				$('#list').on("click", function() {
					 if (confirm("게시글 리스토로 이동 하시겠습니까?") == true) {	// 확인
						 location.href="boardList.do";
				    } else {	// 취소
				    	return false;
				    }
				
				});
				
				$('#add').on("click", function() {
					 if (confirm("게시글 등록 하시겠습니까?") == true) {	// 확인
						 location.href="boardWrite.do";
				    } else {	// 취소
				    	return false;
				    }
				
				});
	
			});
			
			function open_win(url, name) {
				window.open(url, name, "width=500, height=230");
			}
			
		</script>
	</head>
	
	<body>
		<div id="wrap" align="center">
		<h1> 게시글 상세보기 </h1>
			<table>
				<tr>
					<th> 작성자 </th><td> ${getBoard.name} </td>
					<th> 이메일 </th><td> ${getBoard.email} </td>
				</tr>
				<tr>
					<th> 작성일 </th><td><fmt:formatDate value="${getBoard.writedate}"/></td>
					<th> 조회수 </th><td> ${getBoard.readcount} </td>
				</tr>
				<tr>
					<th> 제목 </th>
					<td colspan="3">${getBoard.title}</td>
				</tr>
				<tr>
					<th> 내용 </th>
					<td colspan="3"><pre>${getBoard.content}</pre></td>
				</tr>
			</table>
			<br><br>
			<input id="update" type="button" value="게시글 수정"> &nbsp;&nbsp;
			<input id="delete" type="button" value="게시글 삭제"> &nbsp;&nbsp;
			<input id="list" type="button" value="게시글 리스트"> &nbsp;&nbsp;
			<input id="add" type="button" value="게시글 등록">
		</div>
	</body>
</html>