var vm= new Vue({

    el:'body',
    ready:function(){

    },
    data:{
        current_comments: current_comments,
        checkedCommentIds:[],
        selectAll:false
    },
    methods:{
        toggleSelect:function(){
            if(this.selectAll){
                this.checkedCommentIds = this.getIds();
            }else{
                this.checkedCommentIds = [];
            }
        },
        checkIfAllSelected:function(){

            if(this.checkedCommentIds.length == current_comments.length){
                this.selectAll = true;
            }else{
                this.selectAll = false;
            }
        },
        getIds:function(){
            var ids = [];
            for(i=0;i<this.current_comments.length;i++){
                ids[i] = ""+this.current_comments[i].id;
            }
            return ids;
        },
        deleteComments:function(){
            $.ajax({
                url:'/ucenter/comments/delete',
                type:'post',
                data: {ids:this.checkedCommentIds},
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
        deleteComment:function(id){
            $.ajax({
                url:'/ucenter/comments/delete',
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
        }
    }

});