<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>
<jsp:include page="../common/nav.jsp"/>
<div class="container mt-3">
  <h2>OGV 회원가입</h2>
  <form action="/member/register" method="post">
    <div class="mb-3 mt-3">
      <label for="id">ID:</label>
      <div class="input-group">
      	<input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
      	<button type="button" class="btn btn-success" id="dupleCheck">중복확인</button>
      </div>
    </div>
    <div class="mb-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>    
    <div class="mb-3">
      <label for="nick">Nickname:</label>
      <input type="text" class="form-control" id="nick" placeholder="Enter nickname" name="nickName">
    </div>    
    <div class="mb-3">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
    </div>    
    <div class="mb-3">
      <label for="tel">Tel:</label>
      <input type="text" class="form-control" id="tel" placeholder="Enter Tel" name="tel">
    </div>    
    <div class="mb-3">
      <label for="birth">Birth:</label>
      <input type="date" class="form-control" id="birth" placeholder="Enter Birth" name="birth">
    </div>    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<script src="/resources/js/member.register.js"></script>
<jsp:include page="../common/footer.jsp"/>