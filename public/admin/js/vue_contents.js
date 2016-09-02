
var vm = new Vue({

    el:'body',
    data:{
       showMoveActions:false,
        current_id:'',
        node_id:'',
        target_id:'',
        position:'before'
    },
    methods:{
        toggleMoveActions:function(content_id){
            this.showMoveActions =!this.showMoveActions;
            this.current_id = content_id;
            setTimeout(function(){
                $('.content_actions_area').css('display','table-cell');
            },0);

        },
        moveNode:function($event,node_type){
            $event.preventDefault();
            var url = '/admin/'+node_type+'/'+this.node_id+'/target/'+this.target_id+'/position/'+this.position;
            console.log(url);
            window.location.href=url;
        }
    }

});