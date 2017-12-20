<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    //
	public function index()
	{

		$data = DB::table('test')->paginate(4);

		return view('home.index.index',compact('data'));
	}
}

