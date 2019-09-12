<?php
namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Support\Facades\DB;

class UserController extends Controller{
    public function test(){
        $data = DB::table('admin_operation_log')->select('*')->get();
        //dd($data);
        $results = Article::all();
        dd($results);
    }
}