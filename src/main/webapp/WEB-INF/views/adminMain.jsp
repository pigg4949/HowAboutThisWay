<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>관리자 메인</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
</head>
<body>
<div id="app">
  <!-- 공통 헤더 -->
  <header class="mainHeader">
    <h1 class="title">관리자 모드</h1>
  </header>

  <!-- 관리자 전용 그리드 메뉴 -->
  <div class="cardGrid">
    <a href="${pageContext.request.contextPath}/mapAdmin" class="card">
      <img src="${pageContext.request.contextPath}/resources/images/icon-find.png" alt="길찾기관리" />
      <span>길찾기</span>
    </a>
    <a href="${pageContext.request.contextPath}/reportAdmin" class="card">
      <img src="${pageContext.request.contextPath}/resources/images/icon-report.png" alt="제보 관리" />
      <span>제보 관리</span>
    </a>
    <a href="${pageContext.request.contextPath}/bookmarkAdmin" class="card">
      <img src="${pageContext.request.contextPath}/resources/images/icon-star.png" alt="즐겨찾기 관리" />
      <span>즐겨찾기</span>
    </a>
    <a href="${pageContext.request.contextPath}/userAdmin" class="card">
      <img src="${pageContext.request.contextPath}/resources/images/icon-user.png" alt="사용자 관리" />
      <span>내 정보</span>
      <small>문의/불편 관리</small>
    </a>
  </div>
</div>

<%--<script src="${pageContext.request.contextPath}/resources/js/main.js" defer></script>--%>
</body>
</html>
