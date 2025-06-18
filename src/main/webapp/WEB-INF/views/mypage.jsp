<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String username = (String) session.getAttribute("username");
%>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=360, height=800, initial-scale=1.0" />
    <title>마이페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css" />
</head>
<body>
<div id="app">
    <header class="mypage-header">
        <a href="${pageContext.request.contextPath}/main" class="backButton">←</a>
        <h2 class="pageTitle">내 정보</h2>
    </header>

    <form action="${pageContext.request.contextPath}/mypage/update" method="post">
        <label for="username">이름</label>
        <input id="username" name="username" type="text" value="<%= username %>" readonly />

        <label for="password">비밀번호</label>
        <input id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요" />

        <label for="confirmPassword">비밀번호 확인</label>
        <input id="confirmPassword" name="confirmPassword" type="password" placeholder="비밀번호를 한 번 더 입력해주세요" />

        <button type="submit" class="btn-main">저장</button>

        <label for="inquiry">문의 또는 불편 사항</label>
        <textarea id="inquiry" name="inquiry" placeholder="문의 또는 불편 사항을 입력해주세요"></textarea>

        <button type="submit" formaction="${pageContext.request.contextPath}/mypage/inquiry" class="btn-sub">전송</button>
        <button type="submit" formaction="${pageContext.request.contextPath}/logout" class="btn-sub">로그아웃</button>
        <button type="submit" formaction="${pageContext.request.contextPath}/mypage/delete" class="btn-delete">회원탈퇴</button>
    </form>
</div>
</body>
</html>
