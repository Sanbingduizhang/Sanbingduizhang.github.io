@extends('home.layouts.common')
@section('title','文章')

@section('links')
    <link rel="stylesheet" href="{{asset('homes')}}/article/css/article.css">
@endsection()

@section('content')

    <div class="overall">

        <div class="left xnew21">

            @foreach($data as $v)
            <div class="xnews2">
                <div class="pic">
                    <a target="_blank" href="20160920156216.html">
                        <img src="{{asset('homes')}}/{{$v->img}}" alt="部门聚餐通知怎么写 6篇范文推荐"></a>
                </div>
                <div class="dec">
                    <h3>
                        <a target="_blank" href="20160920156216.html">{{$v->title}}</a>
                    </h3>
                    <div class="time">发布时间：{{date('Y-m-d H:i:s',$v->created_at)}}</div>
                    <p>{{$v->desc}}</p>
                    <div class="time"><a href="">{{$v->author}}</a>  </div>
                </div>
            </div>
            @endforeach



                <div class="pages">
                    {{ $data->links() }}
                </div>

        </div>

    </div>
@endsection()

