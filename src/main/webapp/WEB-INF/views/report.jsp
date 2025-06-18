<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=360, initial-scale=1.0" />
    <title>제보 관리</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/report.css" />
</head>
<body>
<div id="app">
    <!-- 1) 헤더 바: logo + logout -->
    <div class="headerBar">
        <span class="headerTitle">logo</span>
        <button class="logoutBtn" onclick="location.href='${pageContext.request.contextPath}/logout'">
            <img src="${pageContext.request.contextPath}/resources/images/icon-logout.png" alt="로그아웃" />
        </button>
    </div>

    <!-- 2) 탭 버튼 -->
    <div class="tabButtons">
        <button id="tabReport" class="tabActive">제보 내역</button>
        <button id="tabInquiry" class="tabInactive">문의 내역</button>
    </div>

    <!-- 3) 리스트 컨테이너 -->
    <div class="listContainer">
        <div id="listReport" class="reportListActive">
            <div class="reportItem">
                <div class="statusIndicator statusPending"></div>
                <span class="itemTitle">선릉역 엘리베이터 고장이에요!!</span>
                <span class="itemDate">2025 - 05 - 21</span>
            </div>
            <div class="reportItem">
                <div class="statusIndicator statusApproved"></div>
                <span class="itemTitle">모란역 2번출구 에스컬레이터 또 점검</span>
                <span class="itemDate">2025 - 03 - 11</span>
            </div>
            <div class="reportItem">
                <div class="statusIndicator statusRejected"></div>
                <span class="itemTitle">양재역 7번출구 에스컬레이터 점검</span>
                <span class="itemDate">2025 - 03 - 05</span>
            </div>
        </div>
        <div id="listInquiry" class="reportList">
            <div class="reportItem">
                <div class="statusIndicator statusPending"></div>
                <span class="itemTitle">지도에서 제보하기 버튼이 안보여요</span>
                <span class="itemDate">2025 - 05 - 30</span>
            </div>
            <div class="reportItem">
                <div class="statusIndicator statusApproved"></div>
                <span class="itemTitle">지도 마커에는 없는 장소가 있어요</span>
                <span class="itemDate">2025 - 03 - 21</span>
            </div>
            <div class="reportItem">
                <div class="statusIndicator statusRejected"></div>
                <span class="itemTitle">어디 사세요?</span>
                <span class="itemDate">2025 - 03 - 03</span>
            </div>
        </div>
        <div class="pagination">&lt; 1 &gt;</div>
    </div>

    <!-- 4) 하단 내비: 즐겨찾기, 홈, 내 정보 -->
    <nav class="bottomNav">
        <a href="${pageContext.request.contextPath}/bookmark" class="navItem">
            <img src="${pageContext.request.contextPath}/resources/images/icon-star.png" alt="즐겨찾기" />
        </a>
        <a href="${pageContext.request.contextPath}/main" class="navItem">
            <img src="${pageContext.request.contextPath}/resources/images/icon-home.png" alt="홈" />
        </a>
        <a href="${pageContext.request.contextPath}/mypage" class="navItem">
            <img src="${pageContext.request.contextPath}/resources/images/icon-user.png" alt="내 정보" />
        </a>
    </nav>
</div>

<script src="${pageContext.request.contextPath}/resources/js/report.js"></script>
</body>
</html>
