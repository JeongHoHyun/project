<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/nav.jsp" />

<c:set var="qvo" value="${qdto.qvo }" />
<div class="container mt-5">
	<h1>Questions Detail</h1>
	<table class="table table-striped">
		<tr>
			<th>Qno</th>
			<td id="qnoVal">${qvo.qno }</td>
		</tr>
		<tr>
			<th>Category</th>
			<td>${qvo.category }</td>
		</tr>
		<tr>
			<th>ReadCount</th>
			<td>${qvo.readCount }</td>
		</tr>
		<tr>
			<th>Ans_Qty</th>
			<td>${qvo.ansQty }</td>
		</tr>
		<tr>
			<th>Title</th>
			<td>${qvo.title }</td>
		</tr>
		<tr>
			<th>Writer</th>
			<td>${qvo.writer }</td>
		</tr>
		<tr>
			<th>Reg At</th>
			<td>${qvo.regAt }</td>
		</tr>
		<tr>
			<th>Mod At</th>
			<td>${qvo.modAt }</td>
		</tr>
		<tr>
			<th>Question</th>
			<td>${qvo.question}</td>
		</tr>
	</table>
	<div class="d-flex mb-3">
		<c:forEach items="${qdto.fileList }" var="fvo">
			<c:choose>
				<c:when test="${fvo.fileType == 1 }">
					<div class="p-2 flex-fill bg-info">
						<img
							src="/upload/${fn:replace(fvo.saveDir,'\\','/')}/${fvo.uuid }_th_${fvo.fileName }">
						<!-- Button to Open the Modal -->
						<button type="button" id="imgModalBtn" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#${fn:replace(fvo.fileName, '.', '') }">Open
							Image</button>
					</div>
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose>

			<!-- The Modal -->
			<div class="modal" id="${fn:replace(fvo.fileName, '.', '')}">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">${fvo.fileName }</h4>
							<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<img style="width: 100%"
								src="/upload/${fn:replace(fvo.saveDir,'\\','/')}/${fvo.uuid }_${fvo.fileName }">
						</div>

					</div>
				</div>
			</div>


		</c:forEach>
	</div>
	<ul class="nav justify-content-center">
		<li class="nav-item"><a class="nav-link"
			href="/questions/list?pageNo=${pgvo.pageNo }&qty=${pgvo.qty}&type=${pgvo.type}&kw=${pgvo.kw}">List</a>
		</li>
		<li class="nav-item"><a class="nav-link"
			href="/questions/modify?qno=${qvo.qno }&pageNo=${pgvo.pageNo }&qty=${pgvo.qty}&type=${pgvo.type}&kw=${pgvo.kw}">Modify</a>
		</li>
		<li class="nav-item"><a class="nav-link" id="questionsRemove">Remove</a>
		</li>
	</ul>
	<form action="" id="questionsRmForm" style="display: none;" method="post">
		<input type="hidden" id="qno" value="" name="qno"> 
		<input type="hidden" value="${pgvo.pageNo }" name="pageNo"> 
		<input type="hidden" value="${pgvo.qty }" name="qty">
		<input type="hidden" value="${pgvo.type }" name="type">
	</form>
</div>
<!-- Button to Open the Modal -->
<button type="button" style="display: none;" id="modalBtn"
	class="btn btn-primary" data-bs-toggle="modal"
	data-bs-target="#myModal">Open modal</button>

<!-- The Modal -->
<div class="modal" id="myModal">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">Modal Heading</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">Modal body..</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-success modSbmBtn" data-ano="">Submit</button>
			</div>
		</div>
	</div>
</div>

<div class="container mt-3">
	<h2>Comment</h2>
	<div class="input-group mb-3">
		<span class="input-group-text" id="cmtWriter">${ses.email }</span> <input
			type="text" class="form-control" placeholder="Add Comment"
			id="cmtText">
		<button type="button" class="btn btn-primary" id="cmtSbmBtn">ADD</button>
	</div>
	<table class="table table-striped" id="cmtZone"></table>
	<div class="text-center" style="visibility: hidden;">
		<button type="button" data-page="1" id="moreBtn"
			class="btn btn-outline-secondary">MORE +</button>
	</div>
</div>
<script src="/resources/js/questions.detail.js"></script>
<script src="/resources/js/questions.comment.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		getCommentList(document.getElementById('qnoVal').innerText);
		if (document.getElementById('cmtWriter').innerText == '') {
			document.getElementById('cmtText').disabled = true;
			document.getElementById('cmtSbmBtn').classList.add("disabled");
		}
	});
</script>
<jsp:include page="../common/footer.jsp" />