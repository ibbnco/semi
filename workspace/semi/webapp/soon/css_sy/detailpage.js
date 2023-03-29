
$(document).ready(function () {
    // 팝업 띄우기
    $('#open-overlay').click(function (e) {
        $('#overlay').removeClass('visually-hidden');
    });
    // 팝업 삭제
    $('#overlay').click(function (e) {
        if (e.target === e.currentTarget) {
            $(this).addClass('visually-hidden');
        }
    });
    $('.single-item').slick();
});
