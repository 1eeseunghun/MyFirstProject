<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<!-- CLOUDTURING μ±λ΄ -->
<script>
	window.dyc = {
		chatbotUid : "b3979c0b019058cb"
	};
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->

<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<link href="/resources/css/mypage.css" rel="stylesheet">
<title>μμΈπ· κ²μν</title>
</head>
<body>

	<!-- upper navbar here -->
	<jsp:include page="../common/navbar.jsp" />

	<div class="container" style="margin-top: 50px; margin-bottom: 50px;">

		<h3 style="margin-left: 10%;">μμΈπ· κ²μν</h3>
		&nbsp; &nbsp;
		<table class="type07" style="text-align: center; width: 80%;">
			<thead>
				<tr>
					<th>λ²νΈ</th>
					<th>μμ±μ</th>
					<th>μΉ΄νκ³ λ¦¬</th>
					<th>μ λͺ©</th>
					<th>μμ±μΌ</th>
					<th style="display: none;">λ΄μ©</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${data}">
					<c:if test="${board.category eq 'μμΈ'}">
						<tr>
							<td style="width: 8%; border-left: none; text-align: center;"><a
								href="/detail?bNum=${board.b_num}">${board.b_num}</a></td>
							<td style="width: 20%;">${board.nickname}</td>
							<td style="width: 10%;">${board.category}</td>
							<td><a href="/detail?bNum=${board.b_num}">${board.b_title}</a></td>
							<td style="width: 9%; border-right: none;"><fmt:formatDate
									value="${board.cdate}" pattern="yyyy.MM.dd" /></td>
							<td style="display: none;">${board.b_content }</td>

						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>

		<div style="width: 90%;">
			<c:if test="${signIn != null}">
				<input type="button" value="κΈμ°κΈ°"
					style="float: right; background-color: #1e2539; border: none;"
					class="btn btn-primary"
					onclick="location.href='http://localhost:8083/write'"></input>
			</c:if>

		</div>

		<form style="margin-left: 10%;">
			<input class="form-control me-2"
				style="width: 15%; float: left; margin: 0 auto;" type="text"
				placeholder="κ²μ" name="keyword" value="${keyword}" /> 
			<input class="btn btn-outline-success" type="submit" value="κ²μ" />
		</form>

		<br>

		<div class="row text-center" style="width: 60%;">
			<div class="btn-group me-2" role="group" aria-label="First group"
				style="width: 30%; float: none; margin: 0 auto">

				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">1</button>
				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">2</button>
				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">3</button>
				<button type="button" class="btn btn-primary"
					style="background-color: #455889; border-color: #455889;">4</button>

			</div>
		</div>
	</div>
	<br>

	<!-- footer here -->
	<jsp:include page="../common/footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>