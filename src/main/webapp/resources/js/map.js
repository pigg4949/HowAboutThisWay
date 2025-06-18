document.querySelectorAll('.typeBtn').forEach(btn => {
    btn.onclick = function() {
        document.querySelectorAll('.typeBtn').forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
    };
});