<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/nav.jsp" />

<div class="container mt-3">
  <h2>Question!</h2>
  <form action="/questions/register" method="post" enctype="multipart/form-data">
    <div class="mb-3 mt-3">
      <label for="category">Category:</label>
      	<select name='category'>
		    <option value='' selected>-- 카테고리 선택 --</option>
		    <option value='스포츠'>스포츠</option>
		    <option value='정치'>정치</option>
		    <option value='경제'>경제</option>
		    <option value='기타'>기타</option>
		</select>
    </div>
    <div class="mb-3">
      <label for="pname">Title:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title">
    </div>    
    <div class="mb-3">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control" id="Writer" name="writer" value="${ses.email }" readonly>
    </div>
    <div class="mb-3">
      <label for="description">Question:</label>
      <textarea rows="5" class="form-control" name="question"></textarea>
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
<script>
	document.getElementById('attachTrigger').addEventListener('click', () => {
		document.getElementById('files').click();
	});
</script>
<script src="/resources/js/questions.register.js"></script>
<jsp:include page="../common/footer.jsp" />