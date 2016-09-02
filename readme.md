**A Simplified Version of larabase.com**


*   下载全部文件到你的服务器root目录(按照Laravel要求设置)
*   修改.env文件(没有就copy一个), 主要填写数据库 和 邮件设置
*   打开命令行，切换到项目根目录，先运行`composer update -vvv` 然后再运行`php artisan migrate --seed`

访问首页即可

如果需要Oauth功能，需要在config\service.php进行配置



Larabase群：222171637