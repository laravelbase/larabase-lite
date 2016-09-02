<?php

use Illuminate\Database\Seeder;

class Demo extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = \App\Models\User::create([
            'id'=>1,
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('admin123'),
            'remember_token' => str_random(10),
            'avatar'=>'/upload/avatars/10.jpg',
            'verified'=>true
        ]);



        $role = \Larabase\ACL\Models\Role::create([
            'name'=>'admin',
            'label'=>'管理员'
            ]);

        $user->attachRole($role);


        $c1 = \App\Models\Category::Create([
            'name'=>'分类示例',
            'type'=>'post'
        ]);

            $item = [
                'title'=>'这是一个示例文章',
                'desc'=>'欢迎来到LaraBase'
            ];

            $item = \App\Models\Post::Create($item);
            $item->user_id = $user->id;
            $item->feature_img = '/upload/posts/1.jpg';
            $item->categories()->save($c1);
            $item->status = '已发布';
            $item->type = 'article';
            $item->save();





        $cm1 = \App\Models\Comment::create([
            'body'=>'潘基文是个好人',
            'post_id'=>1,
            'parent_id'=>0,
            'user_id'=>$user->id
        ]);

        $c5 =\App\Models\Category::Create([
            'name'=>'首页主导航',
            'type'=>'menu'
        ]);

        $menus = [['首页','/'],['专辑','/collections']];

        foreach($menus as $index =>$item){
            $menu =   \App\Models\Menu::Create([
                'name'=>$item[0],
                'link'=>$item[1]
            ]);
            $menu->category()->associate($c5);
            $menu->save();
        }

        $collection1=\App\Models\Collection::create([
            'name'=>'示例专辑',
        ]);




        \Fenos\Notifynder\Models\NotificationCategory::create([
            'name'=>'greet',
            'text'=>'{to.name} 你好，欢迎光临LaraBase，希望你在这里可以度过愉快时光！'
        ]);

        \Fenos\Notifynder\Models\NotificationCategory::create([
            'name'=>'notifyThreadOwner',
            'text'=>'{to.name},{from.name}回复了你的帖子,点击查看。'
        ]);

        \Fenos\Notifynder\Models\NotificationCategory::create([
            'name'=>'notifyOwnerOnArticleCommented',
            'text'=>'{from.name} 对你的文章 {extra.title} 发表了评论。'
        ]);

        \Fenos\Notifynder\Models\NotificationCategory::create([
            'name'=>'notifyOwnerOnCommentReplied',
            'text'=>'{from.name} 对你的评论 {extra.body} 进行了回复。'
        ]);
        \Fenos\Notifynder\Models\NotificationCategory::create([
            'name'=>'notifyOauthOnlyUser',
            'text'=>'你正在使用第三方账号登录，请补全常规账号，否则在今后的使用中有可能收不到邮件(因为你没有提供邮箱）'
        ]);

    }
}
