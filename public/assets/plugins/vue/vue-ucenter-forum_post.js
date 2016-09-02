var vm= new Vue({

    el:'body',
    ready:function(){

    },
    data:{
        current_forum_posts: current_forum_posts,
        checkedForumPostIds:[],
        selectAll:false
    },
    methods:{
        toggleSelect:function(){
            if(this.selectAll){
                this.checkedForumPostIds = this.getIds();
            }else{
                this.checkedForumPostIds = [];
            }
        },
        checkIfAllSelected:function(){

            if(this.checkedForumPostIds.length == current_forum_posts.length){
                this.selectAll = true;
            }else{
                this.selectAll = false;
            }
        },
        getIds:function(){
            var ids = [];
            for(i=0;i<this.current_forum_posts.length;i++){
                ids[i] = ""+this.current_forum_posts[i].id;
            }
            return ids;
        },
        deleteForumPosts:function(){
            $.ajax({
                url:'/ucenter/forum/posts/delete',
                type:'post',
                data: {ids:this.checkedForumPostIds},
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
        deleteForumPost:function(id){
            $.ajax({
                url:'/ucenter/forum/posts/delete',
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