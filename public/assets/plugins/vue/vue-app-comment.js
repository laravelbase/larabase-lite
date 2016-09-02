
var vm = new Vue({

    el: 'body',
    data:{
        comments:[],
        post:'',
        comment:'',
        reply:'',
        showCommentInput:false,
        showReplies:false,
        current_comment_id:'',
        children:{},
        position:'right',
        post_liked: '',
        total_comments_count:0,
        auth_user:'',
        showActions:0,
        showDelete:0
    },
    computed:{

    },
    filters:{
        rightOrLeft:function(val,child){

            if(child.user.id == user.id){
                return 'right'
            }else{
                return 'left'
            }

        },
        commentsAreaLogic:function(value,comment){

            return this.showReplies && comment.id == this.current_comment_id && comment.children_count;
        }
    },
    methods:{
        getHtml:function(){
            var html= $('body').not('#test-editormd-view');
            return html;
        },
        openCommentInput:function(){
            this.showCommentInput =!this.showCommentInput;
            setTimeout(function() {
                $('#sendPost').focus();
            }, 10);

        },
        showReplyArea:function(comment){
            this.showReplies=!this.showReplies;

            if(this.current_comment_id == comment.id ){

            }else{
                this.showReplies=true;
                this.current_comment_id = comment.id;
            }

            setTimeout(function() {
                $('#replyPost').focus();
            }, 10);
            this.children.$set(comment.id,[]);
            if(comment.children_count == 0){
                return;
            };
            $.ajax({
                url:'/comment/'+comment.id+'/children',
                type:'get',
                dataType:'json',
                beforeSend:function(XMLHttpRequest){
                    setTimeout(function() {
                    $(".loading").show().html('<img src="/assets/images/loading-spin.svg" alt="Loading icon" width="30">');
                    }, 0);
                },
                success:function(res){

                    setTimeout(function() {
                        $(".loading").hide();
                    }, 0);
                    this.children.$set(comment.id,res);
                }.bind(this),
                error:function(){

                }
            })
        },
        postComment:function(e){
            e.preventDefault();
            this.firstReply = false;
            if(this.comment =='') return;
            var data = {
                'post_id':post.id,
                'body':this.comment,
                '_token':_token,
                'user_id':user.id,
                'parent_id':0
            };

            $.ajax({
                url:'/comment',
                data:data,
                type:'post',
                dataType:'json',
                success:function(res){

                    fireMsg('评论成功','green');
                    this.comment = '';
                    this.comments.push(res);
                    this.total_comments_count ++;
                }.bind(this),
                error:function(){

                }
            })

        },
        postReply:function(e,comment){
            e.preventDefault();
            if(this.auth_user == 0){
                $('.open-login').trigger('click');
                return
            }
            if(this.reply =='') return;
            var data = {
                'post_id':post.id,
                'body':this.reply,
                '_token':_token,
                'user_id':user.id,
                'parent_id':comment.id
            };

            $.ajax({
                url:'/comment',
                data:data,
                type:'post',
                dataType:'json',
                success:function(res){

                    fireMsg('评论成功','green');
                    this.reply = '';
                    this.firstReply == true;
                    comment.children_count +=1;

                    this.children[comment.id].push(res);
                    this.total_comments_count ++;
                }.bind(this),
                error:function(error){

                    var data = {
                        message: error.responseText,
                        timeout: 2000
                    };
                    snackbarContainer.MaterialSnackbar.showSnackbar(data);
                }
            })
        },


        closeAllCommentsPanels:function($event){
            $('.comment-body.reply').hide();
            $('.comment-input').hide();
        },

        toggleCommentLike:function(comment){
         if(this.auth_user == 0){
             $('.open-login').trigger('click');
             return
         }
            $.ajax({
                url:'/like/comment/'+comment.id,
                type:'get',
                dataType:'json',
                success:function(res){
                    comment.likes_count += res;
                    if(res > 0){
                        comment.isLiked = true;
                        comment.liked_users.push(user);
                    }else{
                        comment.isLiked = false;
                        comment.liked_users = comment.liked_users.filter(function(single_user){
                            return single_user.id != user.id;
                        });
                    }
                }.bind(this),
                error:function(res){
                    console.log(res);
                }
            })
        },
        togglePostLike:function(post_id){
            if(this.auth_user == 0){
                $('.open-login').trigger('click');
                return
            }
            $.ajax({
                url:'/like/post/'+post_id,
                type:'get',
                dataType:'json',
                success:function(res){
                    this.post_liked = !this.post_liked;
                }.bind(this),
                error:function(res){

                }
            })
        },

        deleteReply:function(event,child,comment,comment_group){
            event.preventDefault();
            $.ajax({
                url:'/delete/comment/'+child.id,
                type:'get',
                dataType:'html',
                success:function(res){

                    comment_group.$remove(child);
                    comment.children_count --;
                    this.total_comments_count --;

                    fireMsg('删除成功','green');
                }.bind(this),
                error:function(error){
                    fireMsg(error.responseText,'red');
                }
            })
        },
        deleteComment:function(event,comment){
            event.preventDefault();
            $.ajax({
                url:'/delete/comment/'+comment.id,
                type:'get',
                dataType:'json',
                success:function(res){
                    this.total_comments_count = this.total_comments_count-(1+comment.children_count);
                    this.comments.$remove(comment);

                    fireMsg('删除成功','green');
                }.bind(this),
                error:function(error){
                    fireMsg(error.responseText,'red');
                }
            })
        }

    }
});