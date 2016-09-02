**A Simplified Version of larabase.com**


*   下载（建议用 `git clone https://github.com/laravelbase/larabase-lite`,这样如果有更新，你可以`git pull`）全部文件到你的服务器root目录(按照Laravel要求设置)
*   修改.env文件(没有就copy一个), 主要填写数据库 和 邮件设置
*   打开命令行，切换到项目根目录，先运行`composer update -vvv` 然后再运行`php artisan migrate --seed`

访问首页即可

***访问后台***
用以下账号密码登陆

admin@admin.com

admin123

右上角菜单可以进入后台管理界面


如果需要Oauth功能，需要在config\service.php进行配置



Larabase群：222171637