<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=360, height=800, initial-scale=1.0">
    <title>아이디 / 비밀번호 찾기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findInfo.css" />

</head>
<body>
<div id="app">
    <!-- 뒤로 가기 버튼 -->
    <header>
        <a href="${pageContext.request.contextPath}/" class="backButton">←</a>

    </header>
    <!-- 아이디 찾기 섹션 -->
    <section class="findId">
        <h2>아이디 찾기</h2>
        <form action="${pageContext.request.contextPath}/findId" method="post">
            <input name="name" type="text" placeholder="이름을 입력해주세요" required>
            <input name="ssnFront" type="text" placeholder="주민번호 앞 6자리" required>
            <input name="ssnBack" type="password" placeholder="주민번호 뒤 7자리" required>
            <button type="submit">확인</button>
        </form>
    </section>

    <!-- 비밀번호 찾기 섹션 -->
    <section class="findPw">
        <h2>비밀번호 찾기</h2>
        <form action="${pageContext.request.contextPath}/findPw" method="post">
            <input name="userId" type="text" placeholder="아이디를 입력해주세요" required>
            <div class="inputWithButton">
                <input name="contact" type="text" placeholder="연락처를 입력해주세요" required>
                <button type="button" id="sendCode">인증번호 발송</button>
            </div>
            <div class="inputWithButton">
                <input name="code" type="text" placeholder="인증번호 입력" required>
                <button type="button" id="verifyCode">인증번호 확인</button>
            </div>
        </form>
    </section>
</div>
</body>
</html>