<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="/">HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						지식인! (Q&A) </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/questions/list?category=${qvo.category }"> 카테고리1</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리2</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리3</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리4</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리5</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리6</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리7</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리8</a></li>
						<li><a class="dropdown-item" href="/member/list">카테고리9</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/questions/list">지식인 메인</a></li>
						<li><a class="dropdown-item" href="/questions/register">질문 등록</a></li>
					</ul></li>
				<c:choose>
					<c:when test="${ses.email ne null && ses.email ne '' }">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								${ses.nickName } </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item"
									href="/member/detail?email=${ses.email }"> ${ses.email }</a></li>
								<li><a class="dropdown-item" href="/member/list">Member
										List</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="/member/logout">Logout</a></li>
							</ul></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/member/register">Member Register</a></li>
						<li class="nav-item"><a class="nav-link" href="/member/login">Login</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>