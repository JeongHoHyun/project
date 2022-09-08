<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/nav.jsp" />

<div class="container mt-5">
	<h1>Member Modify</h1>
	<form action="/member/modify" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${pgvo.pageNo }" name="pageNo"> <input
			type="hidden" value="${pgvo.qty }" name="qty">
		<div class="mb-3 mt-3">
			<label for="email">Email:</label> <input type="email"
				class="form-control" id="email" placeholder="Enter email"
				name="email" value="${mvo.email }" readonly>
		</div>
		<div class="mb-3">
			<label for="pwd">Password:</label> <input type="password"
				class="form-control" id="pwd" placeholder="Enter password"
				name="pwd" value="${mvo.pwd }">
		</div>
		<div class="mb-3">
			<label for="nick">Nickname:</label> <input type="text"
				class="form-control" id="nick" placeholder="Enter nickname"
				name="nickName" value="${mvo.nickName}">
		</div>
		<div class="mb-3">
			<label for="attach">Profile Image:</label> <input type="file"
				class="form-control" style="display: none;" id="files"
				name="fileAttached">
			<div class="d-grid">
				<button type="button" id="attachTrigger"
					class="btn btn-outline-primary btn-block d-block">Attach
					File</button>
			</div>
			<div class="my-3" id="fileZone"></div>
		</div>
		<button type="submit" class="btn btn-primary" id="regBtn">Submit</button>
	</form>
</div>
<script>
	document.getElementById('attachTrigger').addEventListener('click', () => {
		document.getElementById('files').click();
	});
</script>
<jsp:include page="../common/footer.jsp" />