function closeMessage(el) {
    el.animate({
        opacity:'0.1'
    },800,function(){
        el.remove();
    });
}

function closeGirlMessage(el) {
    el.animate({
        opacity:'0.1'
    },800,function(){
        el.remove();
    });
}
function quickCloseMessage(el){
    el.remove();
}
function fireMsg(msg,type,confirmation){

    if(type == 'blue'){
       var icon = 'icon md-notifications-none';
    }

    if(type == 'green'){
         icon = 'icon md-check';
    }

    if(type == 'red'){
        icon = 'icon md-close';
    }

    if(type == 'orange'){
        icon = 'icon md-alert-circle-o';
    }

    if(type == 'girl'){
        var number =Math.ceil(2*Math.random());
        var img_url = '/upload/girls/'+number+'.png';
        var girl = '<img src="'+img_url+'" class="alert-girl">';
    }

    icon ='<i class="'+icon+'" aria-hidden="true"></i>';
    console.log(icon);

    if(confirmation){
        $('.Message-button').show();
    }
    html = $("#alert-template");

    var notification = html.clone(true);
    _class = 'Message Message--'+type;

    notification.addClass(_class).removeAttr('id').css('display','block').find('p').html(msg);
    if(type =='girl'){
        notification.find('.Message-icon').css({'width':'148px','height':'148px','border-radius':'50% 50%'}).html(girl);
        notification.css('background-color','transparent');
        notification.find('.Message-body p').css({'background-color':'#ff6a84','padding':'10px 10px 10px 10px'});
    }else{
        notification.find('.Message-icon').html(icon);
    }

    notification.appendTo('.notification-container');

    if(!confirmation){
        if(type == 'girl'){
            setTimeout(function () {
                closeGirlMessage(notification);
            },3000);
        }else{
            setTimeout(function () {
                closeMessage(notification);
            },3000);
        }
    }

}


$(function(){

    $('.js-messageClose').on('click', function(e) {
        quickCloseMessage($(this).closest('.Message'));
    });

    $('#view-source').on('click',function(event){
        event.preventDefault();
        fireMsg('亲爱的,欢迎回来!','girl');
    });

});
