var vm= new Vue({

    el:'body',
    ready:function(){

    },
    data:{
        current_threads: current_threads,
        checkedThreadIds:[],
        selectAll:false
    },
    methods:{
        toggleSelect:function(){
            if(this.selectAll){
                this.checkedThreadIds = this.getIds();
            }else{
                this.checkedThreadIds = [];
            }
        },
        checkIfAllSelected:function(){

            if(this.checkedThreadIds.length == current_threads.length){
                this.selectAll = true;
            }else{
                this.selectAll = false;
            }
        },
        getIds:function(){
            var ids = [];
            for(i=0;i<this.current_threads.length;i++){
                ids[i] = ""+this.current_threads[i].id;
            }
            return ids;
        },
        deleteThreads:function(){
            $.ajax({
                url:'/ucenter/forum/threads/delete',
                type:'post',
                data: {ids:this.checkedThreadIds},
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
        deleteThread:function(id){
            $.ajax({
                url:'/ucenter/forum/threads/delete',
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