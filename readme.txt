һ����װ���°�laravel
composer create-project --prefer-dist laravel/laravel laravel
��������
php artisan serve
http://localhost:8000

������װlaravel-admin
requirements
PHP >= 7.0.0
Laravel >= 5.5.0
Fileinfo PHP Extension

1.composer require encore/laravel-admin
2.php artisan vendor:publish --provider="Encore\Admin\AdminServiceProvider"
3.�޸�.env���ݿ�������Ϣ���������ݿ�
4.App\Providers\AppServiceProvider�ļ��������
use Illuminate\Support\Facades\Schema; //add fixed sql
public function register()
{
        //
        Schema::defaultStringLength(191); //add fixed sql
}

5.php artisan admin:install