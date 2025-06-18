<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=360, height=800, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css" />
</head>
<body>
<div id="app">
    <!-- 상단 뒤로가기 & 타이틀 -->
    <header>
        <a href="${pageContext.request.contextPath}" class="backButton">←</a>
        <h2>회원가입</h2>
    </header>

    <form action="${pageContext.request.contextPath}/signup" method="post">
        <!-- 아이디 + 중복확인 -->
        <label for="userId">아이디</label>
        <div class="inputWithButton">
            <input id="userId" name="userId" type="text" placeholder="아이디를 입력해주세요" required />
            <button type="button" id="checkDup" class="buttonPrimary">중복 확인</button>
        </div>

        <!-- 주민등록번호 -->
        <label>주민등록번호</label>
        <div class="ssnGroup">
            <input name="ssnFront" type="text" placeholder="주민번호 앞자리" maxlength="6" required />
            <input name="ssnBack" type="password" placeholder="주민번호 뒷자리" maxlength="7" required />
        </div>

        <!-- 이름 -->
        <label for="name">이름</label>
        <input id="name" name="name" type="text" placeholder="성함을 입력해주세요" required />

        <!-- 비밀번호 -->
        <label for="password">비밀번호</label>
        <input id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요" required />

        <!-- 비밀번호 확인 -->
        <label for="passwordConfirm">비밀번호 확인</label>
        <input id="passwordConfirm" name="passwordConfirm" type="password" placeholder="비밀번호를 한 번 더 입력해주세요" required />

        <!-- 휴대전화 인증 -->
        <label>휴대전화 번호 인증</label>
        <div class="inputWithButton">
            <input name="phone" type="text" placeholder="휴대전화 번호 입력" required />
            <button type="button" id="sendCode" class="buttonPrimary">전송</button>
        </div>
        <div class="inputWithButton">
            <input name="code" type="text" placeholder="인증번호 입력" required />
            <button type="button" id="verifyCode" class="buttonPrimary">확인</button>
        </div>

        <!-- 약관 동의 -->
        <div class="terms">
            <div class="term">
                <input type="checkbox" name="agreeTerms" required />
                <span>이용 약관 동의(필수)</span>
                <a href="#" class="openTermModal" data-term="service">약관보기</a>
            </div>
            <div class="term">
                <input type="checkbox" name="agreeService" required />
                <span>위치 기반 서비스 이용 동의(필수)</span>
                <a href="#" class="openTermModal" data-term="location">약관보기</a>
            </div>
        </div>
        <!-- 제출 버튼 -->
        <div class="formButtons">
            <button type="submit" class="buttonPrimary">회원가입</button>
        </div>
    </form>
</div>
<!-- 공통 약관 모달 -->
<div id="termModal" class="term-modal">
    <div class="term-modal-content">
        <div class="term-modal-header">
            <span id="termModalTitle">약관 제목</span>
            <button type="button" class="term-modal-close" id="termModalClose">&times;</button>
        </div>
        <div id="termModalBody" class="term-modal-body"></div>
    </div>
</div>


</body>
<script src="${pageContext.request.contextPath}/resources/js/signup.js"></script>

</html>
