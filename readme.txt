一、安装最新版laravel
composer create-project --prefer-dist laravel/laravel laravel
本地运行
php artisan serve
http://localhost:8000

二、安装laravel-admin
requirements
PHP >= 7.0.0
Laravel >= 5.5.0
Fileinfo PHP Extension

1.composer require encore/laravel-admin
2.php artisan vendor:publish --provider="Encore\Admin\AdminServiceProvider"
3.修改.env数据库连接信息并创建数据库
4.App\Providers\AppServiceProvider文件添加两行
use Illuminate\Support\Facades\Schema; //add fixed sql
public function register()
{
        //
        Schema::defaultStringLength(191); //add fixed sql
}

5.php artisan admin:install