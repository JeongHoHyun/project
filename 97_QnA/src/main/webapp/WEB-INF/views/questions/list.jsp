<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/nav.jsp" />

<div class="container mt-5">
	<div class="row">
		<div class="col-sm-12 col-md-6">
			<h1>
				Q&A List
				<c:if test="${ses.email ne null }">
					<a href="/questions/register" class="btn btn-primary">질문하기</a>
				</c:if>
			</h1>
		</div>
		
		 <div class="col-sm-12 col-md-6">
			<form class="d-flex" action="/questions/list" method="get">
				<input type="hidden" name="pageNo" value="${pgn.pgvo.pageNo }">
				<input type="hidden" name="qty" value="${pgn.pgvo.qty }">
				<div class="input-group">
					<c:set value="${pgn.pgvo.type }" var="typed" />
					<select class="form-select" name="type">
						<option ${typed eq null ? 'selected':'' }>선택</option>
						<option value="twc" ${typed eq 'twc' ? 'selected':'' }>전체검색</option>
						<option value="t" ${typed eq 't' ? 'selected':'' }>Title</option>
						<option value="w" ${typed eq 'w' ? 'selected':'' }>Writer</option>
						<option value="c" ${typed eq 'c' ? 'selected':'' }>Category</option>
						<option value="tw" ${typed eq 'tw' ? 'selected':'' }>Title
							or Writer</option>
						<option value="tc" ${typed eq 'tc' ? 'selected':'' }>Title
							or Category</option>
						<option value="wc" ${typed eq 'wc' ? 'selected':'' }>Writer
							or Category</option>
					</select> <input class="form-control me-2" type="search"
						placeholder="Search" aria-label="Search" name="kw"
						value="${pgn.pgvo.kw }">
					<button class="btn btn-outline-success" type="submit">
						Search <span class="badge bg-danger">${pgn.totalCount }</span>
					</button>
				</div>
			</form>
		</div>
		
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Qno</th>
				<th>Category</th>
				<th>Title</th>
				<th>Writer</th>
				<th>Mod At</th>
				<th>Read Count</th>
				<th>Cmt Qty</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="qvo">
				<tr>
					<td>${qvo.qno }</td>
					<td>${qvo.category }</td>
					<td><a
						href="/questions/detail?qno=${qvo.qno }&pageNo=${pgn.pgvo.pageNo }&qty=${pgn.pgvo.qty}">
							<c:if test="${pvo.fileCount > 0 }">
								<i class="material-icons">attachment</i>
							</c:if> ${qvo.title }
					</a></td>
					<td>${qvo.writer}</td>
					<td>${qvo.modAt}</td>
					<td>${qvo.readCount }</td>
					<td>${qvo.ansQty }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<ul class="pagination justify-content-center">
		<c:if test="${pgn.prev }">
			<li class="page-item"><a class="page-link"
				href="/questions/list?pageNo=${pgn.startPage-1 }&qty=${pgn.pgvo.qty}&type=${pgn.pgvo.type}&kw=${pgn.pgvo.kw}">Prev</a>
			</li>
		</c:if>
		<c:forEach begin="${pgn.startPage }" end="${pgn.endPage }" var="i">
			<li class="page-item ${pgn.pgvo.pageNo == i ? 'active':'' }"><a
				class="page-link"
				href="/questions/list?pageNo=${i }&qty=${pgn.pgvo.qty}&type=${pgn.pgvo.type}&kw=${pgn.pgvo.kw}">${i }</a></li>
		</c:forEach>
		<c:if test="${pgn.next }">
			<li class="page-item"><a class="page-link"
				href="/questions/list?pageNo=${pgn.endPage + 1 }&qty=${pgn.pgvo.qty}&type=${pgn.pgvo.type}&kw=${pgn.pgvo.kw}">Next</a>
			</li>
		</c:if>
	</ul>
</div>



<jsp:include page="../common/footer.jsp" />