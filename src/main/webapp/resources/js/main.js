// resources/js/main.js

document.addEventListener('DOMContentLoaded', () => {
    const openLink      = document.getElementById('openReportModal');
    const modal         = document.getElementById('reportModal');
    const closeBtn      = document.getElementById('closeReportModal');
    const uploadBtn     = document.getElementById('uploadImageBtn');
    const submitBtn     = document.getElementById('submitReportBtn');
    const categoryInput = document.getElementById('reportCategory');
    const descInput     = document.getElementById('reportDescription');

    if (!openLink || !modal || !closeBtn) {
        console.error('모달 관련 요소를 찾을 수 없습니다.');
        return;
    }

    // “제보하기” 카드 클릭 → 모달 열기
    openLink.addEventListener('click', e => {
        e.preventDefault();
        modal.classList.add('active');
    });

    // × 버튼 클릭 → 모달 닫기
    closeBtn.addEventListener('click', () => {
        modal.classList.remove('active');
    });

    // 모달 바깥 클릭 → 모달 닫기
    modal.addEventListener('click', e => {
        if (e.target === modal) {
            modal.classList.remove('active');
        }
    });

    // (선택) 이미지 업로드 버튼
    uploadBtn.addEventListener('click', () => {
        // 예: 파일 선택 다이얼로그 띄우기
        console.log('이미지 업로드 로직 호출');
    });

    // “제보하기” 버튼 클릭 → 유효성 검사 후 전송
    submitBtn.addEventListener('click', () => {
        const category = categoryInput.value;
        const desc     = descInput.value.trim();

        if (!category) {
            alert('분류를 선택해주세요.');
            return;
        }
        if (!desc) {
            alert('내용을 입력해주세요.');
            return;
        }

        // TODO: AJAX로 서버에 제보 내용 전송 구현
        console.log('제보 데이터:', { category, desc });

        // 전송 후 모달 닫고 확인 알림
        modal.classList.remove('active');
        alert('✅ 제보가 접수되었습니다.');
    });
});
