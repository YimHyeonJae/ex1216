<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<a href="list">목록</a>
	<a href="write">글쓰기</a>
	<c:if test="${uid == null}">
		<a href="login">로그인</a>
	</c:if>
	<c:if test="${uid != null}">
		<a href="logout">로그아웃</a>
		[아이디:<b>${uid}</b>]
	</c:if>