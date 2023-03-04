<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<!-- CLOUDTURING 챗봇 -->
<script>
    window.dyc = {
        chatbotUid: "b3979c0b019058cb"
    };
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
	
<meta charset="UTF-8">
<title>${data.b_title }</title>
</head>
<body> 

	<!-- upper navbar here -->
	<jsp:include page="../common/navbar.jsp"/>
	<br>
	<div class="container" style="width:70%">
	<h3>${ data.category } 게시판</h3>
	&nbsp;
	&nbsp;
	<hr>
	&nbsp;${ data.b_title }
	<span style="float: right;">&nbsp;
	<fmt:formatDate value="${data.cdate}" pattern="yyyy.MM.dd.hh.mm.ss" />&nbsp;</span>
	<hr>
	
	<div style=" height: 10cm; width: 100%;
	padding:9px;">
	${ data.b_content}
	</div>

	<hr><!-- 가로 선 -->
	
	<!-- 목록 -->
	<input type="button" value="목록" onclick="location.href='http://localhost:8083/list'" class="btn btn-secondary">
	
	
	<c:if test="${signIn.user_id eq data.user_id }">
	<!-- 수정 -->
	<input type="button" value="수정" onclick="location.href='http://localhost:8083/update?bNum=${bNum}'" class="btn btn-secondary">
	
	<!-- 삭제 -->
	<form method="POST" action="/delete" style=" display: inline-block; float: right;">
		<input type="hidden" name="bNum" value="${bNum}" />
		<input class="btn btn-secondary" type="submit" value="삭제" onclick="return delCheck()" style=" background-color: #455889; border-color: #455889;">
	</form>
	</c:if>
	
	</div>
	<br>
	
<!-- footer here -->
	<footer class="fixed-bottom">
	<jsp:include page="../common/footer.jsp" />
</footer>
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/js/deleteConfirm.js"></script>
</body>
</html>