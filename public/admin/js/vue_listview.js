var vm = new Vue({
    el: 'body',
    ready:function(){
        console.log(all);
    },
    data: {
        checkedIds: [],
        allChecked: false,
    },
    computed:{
        ids_to_be_deleted:function(){
            if(this.allChecked){
                return all;
            }else{
                return this.checkedIds;
            }
        }
    },
    methods:{
        toggleCheckAll:function($event){
            this.allChecked = !this.allChecked;
            if(this.allChecked){
               this.checkedIds = all;
            }else{
                this.checkedIds = [];
            }
        },
        bulkDelete:function(resource_type){

            var data = {
                'ids':this.ids_to_be_deleted,
                '_token':_token
            };
            $.ajax({
                url:'/admin/'+resource_type+'/delete',
                data:data,
                type:'post',
                dataType:'html',
                success:function(res){
                    location.reload();
                }.bind(this),
                error:function(){

                }
            })
        }
    }
})