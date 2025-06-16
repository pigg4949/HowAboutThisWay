<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
        prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Tmap 지도</title>
  <script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=5IMNtNF9C99SCbZR9bOLO3j6DMWNJgrW6qr30hL1"></script>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
      background-color: #f5f5f5;
      padding: 20px;
      font-family: "Noto Sans KR", sans-serif;
    }

    .search-container {
      width: 100%;
      max-width: 500px;
      margin: 0 auto 20px;
      display: flex;
      gap: 10px;
    }

    .search-container input {
      flex: 1;
      padding: 12px;
      border: 2px solid #4caf50;
      border-radius: 8px;
      font-size: 16px;
      transition: all 0.3s ease;
    }

    .search-container input:focus {
      outline: none;
      box-shadow: 0 0 0 3px rgba(76, 175, 80, 0.2);
    }

    .search-container button {
      padding: 12px 24px;
      background-color: #4caf50;
      color: white;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 16px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    .search-container button:hover {
      background-color: #45a049;
    }

    .map-container {
      display: flex;
      gap: 20px;
      width: 100%;
      max-width: 1200px;
      margin: 0 auto;
    }

    .search-results {
      width: 30%;
      background: white;
      border-radius: 12px;
      padding: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .search-results .title {
      font-size: 1.4em;
      margin-bottom: 20px;
      color: #333;
      font-weight: bold;
    }

    .search-results ul {
      list-style: none;
    }

    .search-results li {
      padding: 12px;
      border-bottom: 1px solid #eee;
      display: flex;
      align-items: center;
      gap: 12px;
      transition: background-color 0.2s ease;
      cursor: pointer;
    }

    .search-results li:hover {
      background-color: #f8f8f8;
    }

    .search-results li img {
      width: 24px;
      height: 38px;
    }

    .search-results li span {
      font-size: 14px;
      color: #333;
    }

    #map_div {
      width: 60%;
      height: 60vh;
      border-radius: 12px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    @media screen and (max-width: 768px) {
      .map-container {
        flex-direction: column;
      }

      .search-results,
      #map_div {
        width: 100%;
      }

      #map_div {
        height: 50vh;
      }

      .search-container {
        padding: 0 10px;
      }
    }
  </style>
</head>
<body>
<div class="search-container">
  <input
          type="text"
          id="searchKeyword"
          name="searchKeyword"
          value="서울시"
          placeholder="검색어를 입력하세요"
  />
  <button id="btn_select">검색</button>
</div>

<div class="map-container">
  <div class="search-results">
    <div class="title"><strong>Search</strong> Results</div>
    <div class="rst_wrap">
      <div class="rst">
        <ul id="searchResult" name="searchResult">
          <li>검색결과</li>
        </ul>
      </div>
    </div>
  </div>
  <div id="map_div"></div>
</div>

<script>
  let map, marker;
  let markerArr = [];

  function initTmap() {
    map = new Tmapv2.Map("map_div", {
      center: new Tmapv2.LatLng(37.5652045, 126.98702028),
      width: "100%",
      height: "100%",
      zoom: 17,
      zoomControl: true,
      scrollwheel: true,
    });

    document
            .getElementById("btn_select")
            .addEventListener("click", function () {
              const searchKeyword =
                      document.getElementById("searchKeyword").value;

              // 백엔드 API 호출
              fetch(`${pageContext.request.contextPath}/searchLocation.map`, {
                method: "POST",
                headers: {
                  "Content-Type": "application/json",
                },
                body: JSON.stringify({ keyword: searchKeyword }),
              })
                      .then((response) => response.json())
                      .then((data) => {
                        if (markerArr.length > 0) {
                          markerArr.forEach((marker) => marker.setMap(null));
                          markerArr = [];
                        }

                        let innerHtml = "";
                        let positionBounds = new Tmapv2.LatLngBounds();

                        data.forEach((poi, index) => {
                          const markerPosition = new Tmapv2.LatLng(poi.lat, poi.lon);

                          marker = new Tmapv2.Marker({
                            position: markerPosition,
                            icon:
                                    "https://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_" +
                                    index +
                                    ".png",
                            iconSize: new Tmapv2.Size(24, 38),
                            title: poi.name,
                            map: map,
                          });

                          innerHtml += `<li><img src='https://tmapapi.sktelecom.com/upload/tmap/marker/pin_b_m_${index}.png'/><span>${poi.name}</span></li>`;

                          markerArr.push(marker);
                          positionBounds.extend(markerPosition);
                        });

                        document.getElementById("searchResult").innerHTML = innerHtml;
                        map.panToBounds(positionBounds);
                        map.zoomOut();
                      })
                      .catch((error) => console.error("Error:", error));
            });
  }

  document.addEventListener("DOMContentLoaded", initTmap);
</script>
</body>
</html>
