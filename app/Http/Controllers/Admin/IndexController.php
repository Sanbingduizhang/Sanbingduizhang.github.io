<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    //后台显示首页
	public function index()
	{
		return view('admin.index.index');
	}
	//后台显示welcome页面
	public function welcome()
	{
		return view('admin.index.welcome');
	}
}
