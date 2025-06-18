// resources/js/report.js
document.addEventListener('DOMContentLoaded', () => {
    const tabReport  = document.getElementById('tabReport');
    const tabInquiry = document.getElementById('tabInquiry');
    const listReport  = document.getElementById('listReport');
    const listInquiry = document.getElementById('listInquiry');

    if (!tabReport || !tabInquiry || !listReport || !listInquiry) {
        console.error('탭 또는 리스트 요소를 찾을 수 없습니다.');
        return;
    }

    tabReport.addEventListener('click', () => {
        tabReport.classList.add('tabActive');
        tabReport.classList.remove('tabInactive');
        tabInquiry.classList.add('tabInactive');
        tabInquiry.classList.remove('tabActive');

        listReport.classList.add('reportListActive');
        listReport.classList.remove('reportList');
        listInquiry.classList.add('reportList');
        listInquiry.classList.remove('reportListActive');
    });

    tabInquiry.addEventListener('click', () => {
        tabInquiry.classList.add('tabActive');
        tabInquiry.classList.remove('tabInactive');
        tabReport.classList.add('tabInactive');
        tabReport.classList.remove('tabActive');

        listInquiry.classList.add('reportListActive');
        listInquiry.classList.remove('reportList');
        listReport.classList.add('reportList');
        listReport.classList.remove('reportListActive');
    });
});
