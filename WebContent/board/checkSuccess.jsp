<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	
	<body>
		<script type="text/javascript">
			if (window.name == "update") {
				window.opener.parent.location.href =
					"boardUpdate.do?num=${param.num}";
			} else if (window.name =="delete") {
				alert("게시글이 삭제 되었습니다.");
				window.opener.parent.location.href =
					"boardDelete.do?num=${param.num}";
			}
			window.close();
		</script>
	</body>
</html>