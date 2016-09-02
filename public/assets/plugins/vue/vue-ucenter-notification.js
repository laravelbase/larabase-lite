var vm= new Vue({

    el:'body',
    ready:function(){

    },
    data:{
        current_notifications: current_notifications,
        checkedNotificationIds:[],
        selectAll:false
    },
    methods:{
        toggleSelect:function(){
            if(this.selectAll){
                this.checkedNotificationIds = this.getIds();
            }else{
                this.checkedNotificationIds = [];
            }
        },
        checkIfAllSelected:function(){

            if(this.checkedNotificationIds.length == current_notifications.length){
                this.selectAll = true;
            }else{
                this.selectAll = false;
            }
        },
        getIds:function(){
            var ids = [];
            for(i=0;i<this.current_notifications.length;i++){
                ids[i] = ""+this.current_notifications[i].id;
            }
            return ids;
        },
        deleteNotifications:function(){
            $.ajax({
                url:'/ucenter/notifications/delete',
                type:'post',
                data: {ids:this.checkedNotificationIds},
                dataType:'json',
                success:function(res){
                    fireMsg(res.sMsg,'green');
                    setTimeout(function(){
                        location.reload();
                    },1000);

                }.bind(this),
                error:function(){
                    console.log('error')
                }
            });
        },
        deleteNotification:function(id){
            $.ajax({
                url:'/ucenter/notifications/delete',
                type:'post',
                data: {ids:[id]},
                dataType:'json',
                success:function(res){
                    fireMsg(res.sMsg,'green');
                    setTimeout(function(){
                        location.reload();
                    },1000);

                }.bind(this),
                error:function(){
                    console.log('error')
                }
            });
        },
        colorUnread:function(notification_id){

            if($.inArray(notification_id,unread_ids) != -1){
                return 'bg_mark'
            }
        }
    }

});