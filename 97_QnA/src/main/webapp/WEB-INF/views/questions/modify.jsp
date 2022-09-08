<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/nav.jsp" />

<div class="container mt-5">
	<h1>question Modify</h1>
	<form action="/questions/modify" method="post" enctype="multipart/form-data">
	<input type="hidden" value="${qdto.qvo.qno }" name="qno">
	<input type="hidden" value="${pgvo.pageNo }" name="pageNo">
	<input type="hidden" value="${pgvo.qty }" name="qty">
	<input type="hidden" value="${pgvo.type }" name="type">
	<input type="hidden" value="${pgvo.kw }" name="kw">
		<div class="mb-3 mt-3">
      <label for="category">Category:</label>
      	<input type="text" class="form-control" id="category" placeholder="Enter category" name="category" value="${qdto.qvo.category }">
    </div>
    <div class="mb-3">
      <label for="pname">Title:</label>
      <input type="text" class="form-control" id="pname" placeholder="Enter question Title" name="title" value="${qdto.qvo.title }">
    </div>    
    <div class="mb-3">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control" id="Writer" name="writer" value="${qdto.qvo.writer }" readonly>
    </div>
    <div class="mb-3">
      <label for="description">Description:</label>
      <textarea rows="5" class="form-control" name="question">${qdto.qvo.question }"</textarea>
    </div>
    <div class="mb-3">
      <label for="attach">File Attach:</label>
      <input type="file" class="form-control" style="display: none;"
       id="files" name="fileAttached" multiple>
      <div class="d-grid">
      <button type="button" id="attachTrigger"
       class="btn btn-outline-primary btn-block d-block">Attach Files</button>
      </div>
      <div class="my-3" id="fileZone"></div> 
    </div>
		<button type="submit" class="btn btn-primary" id="regBtn">Submit</button>
	</form>
</div>
<hr>
<div class="container mt-3">
  <ul class="list-group list-group-flush">
  <c:forEach items="${qdto.fileList }" var="fvo">
    <li class="list-group-item d-flex justify-content-between align-items-center">
    ${fvo.fileName }
    <span class="badge bg-primary rounded-pill">${fvo.fileSize }</span>
    <button data-uuid="${fvo.uuid }" 
    class="btn btn-outline-danger btn-sm fileDelBtn">X</button>
  </li>
  </c:forEach>
  </ul>
</div>
<script src="/resources/js/questions.register.js"></script>
<script src="/resources/js/questions.modify.js"></script>
<script>
	document.getElementById('attachTrigger').addEventListener('click', () => {
		document.getElementById('files').click();
	});
</script>
<jsp:include page="../common/footer.jsp" />