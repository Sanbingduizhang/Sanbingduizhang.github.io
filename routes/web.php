<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//前台路由
//前台首页
Route::get('/','Home\IndexController@index');
Route::group(['prefix'=>'home','namespace'=>'Home'],function () {

	Route::get('article','ArticleController@index');
	Route::get('photo','PhotoController@index');
	Route::get('resume','ResumeController@index');
	Route::get('word','WordController@index');
});

//Route::group(['prefix'=>'home','namespace'=>'Home'],function () {
//	//前台首页
//	Route::get('index','IndexController@index');
//
//});

//后台路由

Route::group(['prefix'=>'admin','namespace'=>'Admin'],function () {
	Route::group(['middleware'=>'login'],function() {
		//后台首页
		Route::get( 'index', 'IndexController@index' );
		//后台欢迎页
		Route::get( 'welcome', 'IndexController@welcome' );

	});
	//显示登录页面的路由
	Route::get('login','LoginController@login');
	//验证登录是否成功的路由
	Route::post('login_check','LoginController@login_check');
	//退出登录页面的路由
	Route::get('logout','LoginController@logout');
});


//Route::group(['prefix'=>'admin','namespace'=>'Admin'],function () {
//	Route::group(['middleware'=>'login'],function(){
//		//后台首页
//		Route::get('index','IndexController@index');
//		//后台欢迎页
//		Route::get('welcome','IndexController@welcome');
//
//	});
//
//	//显示登录页面的路由
//	Route::get('login','ManagerController@login');
//	//验证登录是否成功的路由
//	Route::post('login_check','ManagerController@login_check');
//});