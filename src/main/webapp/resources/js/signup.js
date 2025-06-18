console.log('🔔 signup.js 스크립트 최상단 실행');
const contextPath = '/HowAboutThisWay';

const termModal = document.getElementById('termModal');
const termModalTitle = document.getElementById('termModalTitle');
const termModalBody = document.getElementById('termModalBody');
const termModalClose = document.getElementById('termModalClose');

document.addEventListener('DOMContentLoaded', () => {
    console.log('✅ signup.js loaded');

    const checkDupBtn = document.getElementById('checkDup');
    const userIdInput = document.getElementById('userId');

    if (!checkDupBtn) {
        console.error('❌ checkDup 버튼을 찾을 수 없습니다.');
        return;
    }
    if (!userIdInput) {
        console.error('❌ userId 입력 필드를 찾을 수 없습니다.');
        return;
    }

    checkDupBtn.addEventListener('click', () => {
        const userId = userIdInput.value.trim();
        if (!userId) {
            alert('아이디를 입력해주세요.');
            return;
        }
        console.log(`🔍 중복 확인 요청: ${userId}`);

        fetch(`${contextPath}/user/check?userId=${encodeURIComponent(userId)}`)
            .then(res => {
                if (!res.ok) throw new Error(res.statusText);
                return res.json();
            })
            .then(data => {
                if (data.available) {
                    alert('✅ 사용 가능한 아이디입니다.');
                } else {
                    alert('❌ 이미 사용 중인 아이디입니다.');
                }
            })
            .catch(err => {
                console.error(err);
                alert('⚠️ 중복 확인 중 오류가 발생했습니다.');
            });
    });
});








document.querySelectorAll('.openTermModal').forEach(btn => {
    btn.onclick = function (e) {
        e.preventDefault();
        if (btn.dataset.term === 'service') {
            termModalTitle.textContent = '이용 약관';
            termModalBody.innerHTML = `
        <b>제1조(목적)</b><br>
        본 약관은 [발사 후 조준](이하 "회사")이 제공하는 서비스(이하 "서비스")의 이용과 관련하여 회사와 이용자 간의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.<br><br>
        <b>제2조(회원가입)</b><br>
        1. 이용자는 회사가 정한 절차에 따라 회원가입을 신청할 수 있습니다.<br>
        2. 회원가입 시 제공한 정보가 허위임이 밝혀질 경우, 서비스 이용에 제한이 있을 수 있습니다.<br><br>
        <b>제3조(서비스 이용)</b><br>
        1. 회사는 이용자에게 다양한 서비스를 제공합니다.<br>
        2. 회사는 서비스의 내용, 이용방법, 운영시간을 사전 공지 없이 변경할 수 있습니다.<br><br>
        <b>제4조(회원의 의무)</b><br>
        1. 회원은 관계 법령, 본 약관 및 이용안내 등 회사가 정한 사항을 준수해야 합니다.<br>
        2. 회원은 서비스 이용과 관련하여 다음 각 호의 행위를 해서는 안됩니다.<br>
        &nbsp; 가. 신청 또는 변경 시 허위내용의 등록<br>
        &nbsp; 나. 타인의 정보 도용<br>
        &nbsp; 다. 회사의 운영진, 관리자, 기타 관계자의 명의를 도용하는 행위<br><br>
        <b>제5조(면책조항)</b><br>
        회사는 천재지변, 불가항력적 사유, 이용자의 귀책사유로 인한 서비스 이용 장애에 대해 책임을 지지 않습니다.<br><br>
        <b>제6조(약관의 변경)</b><br>
        본 약관은 회사의 정책 및 관련 법령의 변경에 따라 변경될 수 있습니다. 변경 시 회사는 홈페이지 또는 서비스 내 공지사항을 통해 사전 고지합니다.
      `;
        } else if (btn.dataset.term === 'location') {
            termModalTitle.textContent = '위치기반서비스 약관';
            termModalBody.innerHTML = `
        <b>제1조(목적)</b><br>
        본 약관은 [발사 후 조준]이 제공하는 위치기반서비스(이하 "서비스")의 이용과 관련하여 회사와 이용자 간의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.<br><br>
        <b>제2조(위치정보의 수집 및 이용)</b><br>
        1. 회사는 서비스 제공을 위하여 이용자의 위치정보를 수집·이용할 수 있습니다.<br>
        2. 수집된 위치정보는 서비스 목적 외의 용도로 사용되지 않으며, 보관기간 경과 시 즉시 파기됩니다.<br><br>
        <b>제3조(동의 및 철회)</b><br>
        1. 이용자는 위치정보의 수집 및 이용에 동의하지 않을 수 있으며, 언제든지 동의를 철회할 수 있습니다.<br>
        2. 동의 철회 시 회사는 즉시 위치정보의 수집 및 이용을 중단합니다.<br><br>
        <b>제4조(제3자 제공)</b><br>
        회사는 이용자의 동의 없이 위치정보를 제3자에게 제공하지 않습니다. 다만, 법령에 의해 요구되는 경우에는 예외로 합니다.<br><br>
        <b>제5조(이용자의 권리)</b><br>
        이용자는 자신의 위치정보에 대한 열람, 정정, 삭제를 회사에 요청할 수 있습니다.<br><br>
        <b>제6조(손해배상 및 면책)</b><br>
        위치정보 관리에 있어 회사의 고의 또는 중대한 과실로 손해가 발생한 경우, 회사는 관련 법령에 따라 책임을 집니다. 단, 불가항력적 사유 등은 책임이 제한될 수 있습니다.
      `;
        }
        termModal.classList.add('active');
    };
});

termModalClose.onclick = closeModal;
termModal.onclick = function(e) {
    if (e.target === termModal) closeModal();
};
function closeModal() {
    termModal.classList.remove('active');
}