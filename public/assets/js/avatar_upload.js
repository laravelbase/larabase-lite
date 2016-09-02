$(function(){
    $('#avatar_cover').on('click',function(){
        $('#avatar_input').trigger('click');
    });

    $('#avatar_input').on('change',function(event){
        var url =URL.createObjectURL(event.target.files[0]);
        $('.demo-card-image.mdl-card').css('background','url('+url+') center / cover');
        $('.avatar_actions').fadeIn();
    });

    $('#cancel').on('click',function(){

        $('.demo-card-image.mdl-card').css('background','url('+avatar_img+') center / cover');
        $('#avatar_input').val('');
        $('.avatar_actions').hide();
    });
    $('#upload').on('click',function(){
        $('#avatar_form').submit();
    });

    $('#change_avatar').on('click',function(event){
        event.preventDefault();
        $.ajax({
            type: 'GET',

            url: '/ucenter/avatar/change',

            success: function(res){
                console.log(res);
                $('.demo-card-image.mdl-card').css('background','url('+res+') center / cover');
                fireMsg('换好了哦！','girl');
            }

        });
    });
});