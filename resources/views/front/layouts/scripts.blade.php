<script src="/assets/js/jquery-2.1.1.js"></script>
<script src="/assets/js/material.min.js"></script>

<script src="/assets/js/notification/notification.js"></script>
<script src="/assets/plugins/modal/modal.js"></script>
<script>

    $(function(){

        $('#avatar-wrap').on('click',function(event){
            event.stopImmediatePropagation();
            if($(this).next('div.avatar-drop-menu-wrap').css('display') =='none'){
                $(this).next('div.avatar-drop-menu-wrap').fadeIn();
            }else{
                $(this).next('div.avatar-drop-menu-wrap').hide();
            }
        });

        $('body').on('click',function(){
            $('.avatar-drop-menu-wrap').hide();
        });


        var session_msg ='{{session('flash_notification.message')}}';
        var session_type ='{{session('flash_notification.level')}}';

        if(session_msg){
            if(session_type=='danger'){
                session_type='red';
            }
            if(session_type=='success'){
                session_type='green';
            }
            fireMsg(session_msg,session_type);
        }
        var login_error = '{{session('login_error')}}';
        var register_error ='{{session('register_error')}}';

        if(login_error){
            console.log(login_error);
            $(".open-login").trigger('click');
        }

        if(register_error){
            $(".open-register").trigger('click');
        }

        $('.post-module').hover(function() {
            $(this).find('.description').stop().animate({
                height: "toggle",
                opacity: "toggle"
            }, 300);
        });


        $('.mdl-layout').scroll(function() {
            if($('.mdl-layout').scrollTop()> $(window).height()){
                $('#top-button').show();
            }else{
                $('#top-button').hide();
            }
        });
        $('#top-button').on('click', function(e){
            e.preventDefault();
            $('.mdl-layout').animate({
                scrollTop :0
            }, 2500);

        });


        setTimeout(function(){
            $('.section__play-btn a img').each(function(){//如果有很多图片，我们可以使用each()遍历
                var h = $(this).parent().parent().height();

                var img_w = $(this).width();//图片宽度
                var img_h = $(this).height();//图片高度
                if(img_h<h){
                    var height = h; //高度等比缩放
                    var width = img_w*(h/img_h);
                    $(this).css({"width":width,"height":height});//设置缩放后的宽度和高度
                }
            });
        },200);

        setTimeout(function(){
            $('.section__play-btn a img').each(function(){//如果有很多图片，我们可以使用each()遍历
                var h = $(this).parent().parent().height();

                var img_w = $(this).width();//图片宽度
                var img_h = $(this).height();//图片高度
                if(img_h<h){
                    var height = h; //高度等比缩放
                    var width = img_w*(h/img_h);
                    $(this).css({"width":width,"height":height});//设置缩放后的宽度和高度
                }
            });
        },1000);
        setTimeout(function(){
            $('.section__play-btn a img').each(function(){//如果有很多图片，我们可以使用each()遍历
                var h = $(this).parent().parent().height();

                var img_w = $(this).width();//图片宽度
                var img_h = $(this).height();//图片高度
                if(img_h<h){
                    var height = h; //高度等比缩放
                    var width = img_w*(h/img_h);
                    $(this).css({"width":width,"height":height});//设置缩放后的宽度和高度
                }
            });
        },2000);


    });

</script>

@yield('custom_js')