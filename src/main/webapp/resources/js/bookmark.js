document.addEventListener('DOMContentLoaded', () => {
    const bookmarkList = document.querySelector('.bookmarkList');
    const btnAdd       = document.querySelector('.btnAdd');

    // 신규 입력 폼 템플릿
    const newItemTemplate = `
    <div class="bookmarkItem newItem">
      <div class="itemHeader">
        <input type="text" class="nameInput" placeholder="별명 입력">
        <button type="button" class="cancelBtn">취소</button>
      </div>
      <div class="itemBody">
        <img src="${location.origin + location.pathname.replace(/\/[^/]*$/, '')}/resources/images/icon-location.png" alt="위치">
        <input type="text" class="addressInput" placeholder="도착 주소 입력">
        <button type="button" class="addPlace">장소 추가</button>
      </div>
    </div>`;

    // + 버튼 클릭: 입력폼 삽입
    btnAdd.addEventListener('click', () => {
        btnAdd.style.display = 'none';
        bookmarkList.insertAdjacentHTML('beforeend', newItemTemplate);
    });

    // 리스트 클릭 이벤트 위임: 추가/취소/삭제/수정
    bookmarkList.addEventListener('click', e => {
        // 취소
        if (e.target.classList.contains('cancelBtn')) {
            e.target.closest('.bookmarkItem').remove();
            btnAdd.style.display = 'flex';
            return;
        }

        // 장소 추가
        if (e.target.classList.contains('addPlace')) {
            const newItem = e.target.closest('.bookmarkItem');
            const name    = newItem.querySelector('.nameInput').value.trim();
            const address = newItem.querySelector('.addressInput').value.trim();
            if (!name || !address) {
                alert('별명과 주소를 모두 입력해주세요.');
                return;
            }
            // 저장된 카드 HTML
            const savedHtml = `
        <div class="bookmarkItem saved">
          <div class="itemHeader">
            <span class="placeTitle">${name}</span>
            <span class="star">★</span>
            <div class="itemActions">
              <button type="button" class="actionLink">수정</button>
              <button type="button" class="actionLink">삭제</button>
            </div>
          </div>
          <div class="itemBody">
            <img src="${location.origin + location.pathname.replace(/\/[^/]*$/, '')}/resources/images/icon-location.png" alt="위치">
            <span class="address">${address}</span>
            <button type="button" class="setDestination">도착지 설정</button>
          </div>
        </div>`;
            // 새 카드 추가
            bookmarkList.insertAdjacentHTML('beforeend', savedHtml);
            // 입력폼 제거, + 버튼 다시 보이기
            newItem.remove();
            btnAdd.style.display = 'flex';
            return;
        }

        // 삭제
        if (e.target.textContent === '삭제') {
            e.target.closest('.bookmarkItem').remove();
            return;
        }

        // 수정 (간단히 경고창으로 예시)
        if (e.target.textContent === '수정') {
            alert('수정 기능은 구현 예정입니다.');
            return;
        }
    });
});
