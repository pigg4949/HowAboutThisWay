<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=360, height=800, initial-scale=1.0">
  <title>로그인</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css" />
</head>
<body>
<div id="app">
  <!-- 1) 스플래시 로고 -->
  <div id="logo">이길어때</div>

  <!-- 2) 로그인 박스: 초기엔 숨김 상태 -->
  <main id="loginBox" class="formContainer">
    <form action="${pageContext.request.contextPath}/login" method="post">
      <label for="userId">아이디</label>
      <input id="userId" name="userId" type="text" placeholder="아이디를 입력해주세요" required>

      <label for="password">비밀번호</label>
      <input id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요" required>

      <div class="buttonGroup">
        <button class="buttonPrimary" type="submit">로그인</button>
        <a href="${pageContext.request.contextPath}/signup">
          <button class="buttonSecondary" type="button">회원가입</button>
        </a>
      </div>
    </form>
    <a href="${pageContext.request.contextPath}/findInfo" class="findInfoLink">
      아이디 / 비밀번호 찾기
    </a>
  </main>
</div>
</body>
</html>