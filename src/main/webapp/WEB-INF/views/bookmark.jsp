<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=360, initial-scale=1.0">
    <title>즐겨찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bookmark.css">
</head>
<body>
<div id="app">
    <!-- 헤더 -->
    <header class="bookmarkHeader">
        <span class="logo">logo</span>
        <button class="headerIcon" onclick="location.href='${pageContext.request.contextPath}/main'">
            <img src="${pageContext.request.contextPath}/resources/images/icon-logout.png" alt="뒤로가기">
        </button>
    </header>

    <!-- 즐겨찾기 리스트 -->
    <div class="bookmarkList">
        <!-- 초기 상태일 땐 빈 상태 -->
    </div>

    <!-- + 버튼 -->
    <button type="button" class="btnAdd">
        <img src="${pageContext.request.contextPath}/resources/images/icon-add.png" alt="추가">
    </button>

    <!-- 하단 내비 -->
    <nav class="bottomNav">
        <a href="${pageContext.request.contextPath}/bookmark" class="navItem">
            <img src="${pageContext.request.contextPath}/resources/images/icon-star.png" alt="즐겨찾기" />
        </a>
        <a href="${pageContext.request.contextPath}/main" class="navItem">
            <img src="${pageContext.request.contextPath}/resources/images/icon-home.png" alt="홈" />
        </a>
        <a href="${pageContext.request.contextPath}/mypage" class="navItem">
            <img src="${pageContext.request.contextPath}/resources/images/icon-user.png" alt="내 정보" /></a>
    </nav>
</div>

<script src="${pageContext.request.contextPath}/resources/js/bookmark.js"></script>
</body>
</html>
