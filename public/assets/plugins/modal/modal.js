$(".close, .nope").on('click', function (event) {
    event.preventDefault();
    $('.modal-login').addClass('hidden');
    $('.modal-register').addClass('hidden');
   // $('.mdl-layout').css('overflow-y','auto');
    $('main').css('opacity',1)
});

$(".open-login").on('click', function () {
    $('.modal-login').removeClass('hidden').css('display','block');
    //$('.mdl-layout').css('overflow','hidden');
    $('main').css('opacity',0.3);
});

$(".open-register").on('click', function () {
    $('.modal-register').removeClass('hidden').css('display','block');
    //$('.mdl-layout').css('overflow','hidden');
    $('main').css('opacity',0.3)
});