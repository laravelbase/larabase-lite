var vm= new Vue({

    el:'body',
    ready:function(){

    },
    data:{
        current_posts: current_posts,
        checkedPostIds:[],
        selectAll:false
    },
    computed:{

    },
    methods:{
        toggleSelect:function(){
            console.log(this.selectAll);
            if(this.selectAll){
                console.log(this.getIds());
                this.checkedPostIds = this.getIds();
            }else{
                this.checkedPostIds = [];
            }
        },
        checkIfAllSelected:function(){
            console.log(current_posts);
            if(this.checkedPostIds.length == current_posts.length){
                this.selectAll = true;
            }else{
                this.selectAll = false;
            }
        },
        getIds:function(){
            var ids = [];
            for(i=0;i<this.current_posts.length;i++){
                ids[i] = ""+this.current_posts[i].id;
            }
            return ids;
        },
        unlikePosts:function(){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': _token
                }
            });
            $.ajax({
                url:'/ucenter/favorites/unlike',
                type:'post',
                data: {ids:this.checkedPostIds},
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