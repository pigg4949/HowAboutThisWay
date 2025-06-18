<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=360, height=800, initial-scale=1.0" />
    <title>지도</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/map.css" />
</head>
<body>
<div id="app">
    <!-- 지도 헤더 -->
    <header class="mapHeader">
        <div class="headerLeft">
            <div class="userTypeBtns">
                <button type="button" class="typeBtn active">노약자/임산부</button>
                <button type="button" class="typeBtn">휠체어/유모차</button>
            </div>
            <div class="inputArea">
                <input type="text" placeholder="출발지 입력" />
                <input type="text" placeholder="도착지 입력" />
            </div>
        </div>
        <div class="headerIcons">
            <button class="iconBtn"><img src="${pageContext.request.contextPath}/resources/images/icon-logout.png" alt="로그아웃" /></button>
            <button class="iconBtn"><img src="${pageContext.request.contextPath}/resources/images/icon-shuffle.png" alt="셔플" /></button>
            <button class="iconBtn"><img src="${pageContext.request.contextPath}/resources/images/icon-search.png" alt="검색" /></button>
        </div>
    </header>

    <!-- 지도 영역 -->
    <div class="mapArea">
        <div id="realMap" class="realMap"></div>
        <div class="mapFixedBtns">
            <button class="fixedBtn">
                <img src="${pageContext.request.contextPath}/resources/images/icon-menu.png" alt="메뉴" />
            </button>
            <button class="fixedBtn">
                <img src="${pageContext.request.contextPath}/resources/images/icon-report2.png" alt="신고" />
            </button>
            <button class="fixedBtn">
                <img src="${pageContext.request.contextPath}/resources/images/icon-location.png" alt="위치" />
            </button>
        </div>
    </div>

    <!-- 하단 내비게이션 -->
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
</body>
<script src="${pageContext.request.contextPath}/resources/js/map.js">
</script>
</html>