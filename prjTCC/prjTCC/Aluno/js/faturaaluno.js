document.addEventListener('DOMContentLoaded', () => {
    const rows = document.querySelectorAll('.expandible');

    rows.forEach(row => {
        row.addEventListener('click', () => {
           
            const isActive = row.classList.contains('active');

           
            rows.forEach(r => {
                r.classList.remove('active');
            });


            if (!isActive) {
                row.classList.add('active');
            }
        });
    });
});
