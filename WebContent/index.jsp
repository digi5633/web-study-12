<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web_study_12.ds.JndiDS"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터베이스 연결 테스트</title>
	</head>
	
	<body>
		<c:set var="con" value="${JndiDS.getConnection()}"/>
		<c:out value="${con}"/>
		<br><br>
		<a href="boardList.do">게시판으로 이동</a>
	</body>
</html>