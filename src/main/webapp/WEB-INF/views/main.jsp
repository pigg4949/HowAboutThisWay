<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=360, height=800, initial-scale=1.0">
    <title>메인</title>
    <!-- 공통 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <!-- 메인 전용 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
</head>
<body>
<div id="app">
    <main>
        <div class="cardGrid">
            <a href="${pageContext.request.contextPath}/map" class="card">
                <img src="${pageContext.request.contextPath}/resources/images/icon-find.png" alt="길찾기 아이콘" />
                <span>길찾기</span>
            </a>
            <a href="${pageContext.request.contextPath}/report"
               id="openReportModal"
               class="card">
                <img src="${pageContext.request.contextPath}/resources/images/icon-report.png" alt="제보하기 아이콘" />
                <span>제보하기</span>
            </a>
            <a href="${pageContext.request.contextPath}/bookmark" class="card">
                <img src="${pageContext.request.contextPath}/resources/images/icon-star.png" alt="즐겨찾기 아이콘" />
                <span>즐겨찾기</span>
            </a>
            <a href="${pageContext.request.contextPath}/mypage" class="card">
                <img src="${pageContext.request.contextPath}/resources/images/icon-user.png" alt="내 정보 아이콘" />
                <span>내 정보</span>
                <small>문의/불편 접수</small>
            </a>
        </div>
    </main>
</div>
<div id="reportModal" class="modal">
    <div class="modal-content">
        <button type="button" id="closeReportModal" class="modal-close">×</button>
        <h2>통행 이용 불편 제보</h2>
        <select id="reportCategory">
            <option value="">-- 분류 --</option>
            <option value="barrier">장애물</option>
            <option value="surface">바닥 상태</option>
            <option value="signage">표지판 문제</option>
        </select>
        <textarea id="reportDescription"
                  placeholder="불편 사항을 사진과 함께 기재해주세요."></textarea>
        <div class="modal-actions">
            <button type="button" id="uploadImageBtn" class="buttonSecondary">이미지 업로드</button>
            <button type="button" id="submitReportBtn" class="buttonPrimary">제보하기</button>
        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</html>

