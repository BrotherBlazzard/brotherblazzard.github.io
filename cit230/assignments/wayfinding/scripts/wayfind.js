$(document).ready(function () {
    //$('.nav > li > a[href="'window.location.pathname'"]').parent().addClass('active');
    $('.nav').on('click', 'li', function () {
        $('.topnav li.active').removeClass('active');
        $(this).addClass('active');
    });

});