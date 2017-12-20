<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ArticleController extends Controller
{
    //
	public function index()
	{
		$data = DB::table('test')->paginate(5);

		return view('home.article.index',compact('data'));
	}
}
