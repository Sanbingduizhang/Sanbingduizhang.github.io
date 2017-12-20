@extends('home.layouts.common')
@section('title','首页')
@section('links')
    <link rel="stylesheet" href="{{asset('homes')}}/index/css/index.css">
@endsection


@section('content')
    <div id="contanier">
        <!--公告轮播一栏-->
        <div id="mid">
            <div class="mid-mid">
                <div class="mid-left">
                    <ul>
                        <li><img src="{{asset('homes')}}/index/img/image/1.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/2.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/3.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/4.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/5.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/6.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/7.jpg"></li>
                        <li><img src="{{asset('homes')}}/index/img/image/8.jpg"></li>
                    </ul>
                    <div class="arrow">
                        <span class="arrow-left">&lt;</span>
                        <span class="arrow-right">&gt;</span>
                    </div>
                </div>
                <div class="mid-right">
                    <div class="right-top">
                        <ul>
                            <li>公告<span></span></li>
                            <li>作者<span></span></li>
                        </ul>
                    </div>
                    <div class="right-content">
                        <ul>
                            <li>
                                公告
                            </li>
                            <li>
                                <div>
                                    <p><a href="">GitHub：https://github.com/Sanbingduizhang/</a></p>
                                    <p><a href="">个人邮箱：18862005869@163.com</a></p>
                                    <p><a href="">关于：</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="content">
            <!--文章精选-->
            <div id="banjiji">
                <div class="banji">
                    <div class="hrl">
                        <hr width="502" color="#efefef" />
                    </div>
                    <div class="banjit">文章精选</div>
                    <div class="hrr">
                        <hr width="502" color="#efefef" />
                    </div>
                </div>
                <div class="tu2">
                    @foreach($data as $v)
                    <a href="#">
                        <img src="{{asset('homes')}}/{{$v->img}}" height="264" />
                        <div class="tu2l">
                            <div class="tu2l1">
                                {{$v->author}}
                            </div>
                            <div class="tu2l2">
                                {{$v->title}}
                            </div>
                            <div class="tu2l3">
                                立即加入
                            </div>
                        </div>
                    </a>
                    @endforeach

                </div>
                <div class="gengduo">
                    <a href="{{url('home/article')}}">
                        <span>更多</span>
                    </a>
                </div>
            </div>

            <!--话题将选-->
            <div class="box">
                <div class="bannerm">
                    <div class="jingxuan">
                        <div class="hrl">
                            <hr width="502" color="#efefef" />
                        </div>
                        <div class="huati">话题精选</div>
                        <div class="hrr">
                            <hr width="502" color="#efefef" />
                        </div>
                    </div>
                    <div class="jingtu">
                        <ul>
                            <li>
                                <a href="#">
                                    <img src="{{asset('homes')}}/index/img/images/4134.jpg" />
                                    <div class="neibu">

                                        <div>招募还有谁还卡数控氨基酸就爱看啥假按揭</div>
                                        <span class="luan"><i></i>乱流</span>
                                        <span class="ri"><i></i>2017-07-07</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="{{asset('homes')}}/index/img/images/14414.jpg" />
                                    <div class="neibu">
                                        <div>招募还有谁还卡数控氨基酸就爱看啥假按揭</div>
                                        <span class="luan"><i></i>乱流</span>
                                        <span class="ri"><i></i>2017-07-07</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="{{asset('homes')}}/index/img/images/143.jpg" />
                                    <div class="neibu">
                                        <div>招募还有谁还卡数控氨基酸就爱看啥假按揭</div>
                                        <span class="luan"><i></i>乱流</span>
                                        <span class="ri"><i></i>2017-07-07</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="{{asset('homes')}}/index/img/images/1434.jpg" />
                                    <div class="neibu">
                                        <div>招募还有谁还卡数控氨基酸就爱看啥假按揭</div>
                                        <span class="luan"><i></i>乱流</span>
                                        <span class="ri"><i></i>2017-07-07</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="gengduo">
                        <a href="{{url('home/resume')}}">
                            <span>更多</span>
                        </a>
                    </div>
                </div>
            </div>
            <!--认证达人-->
            <div class="boxx">
                <div class="bannerb">
                    <div class="renzheng">
                        <div class="hrl">
                            <hr width="502" color="#efefef" />
                        </div>

                        <div class="renz">认证达人</div>
                        <div class="hrr">
                            <hr width="502" color="#efefef" />
                        </div>
                    </div>
                    <div class="daren">
                        <ul>
                            <li>
                                <img src="{{asset('homes')}}/index/img/images/7.png" />
                                <div class="imbox">
                                    <div class="im1">星火英语</div>
                                    <div class="im2"><span></span>&nbsp;英语培训</div>
                                    <div class="im3">知名英语教育机构</div>
                                </div>
                            </li>
                            <li>
                                <img src="{{asset('homes')}}/index/img/images/111.png" />
                                <div class="imbox">
                                    <div class="im1">魔石教育</div>
                                    <div class="im2"><span></span>&nbsp;影视特效</div>
                                    <div class="im3">知名英语教育机构</div>
                                </div>
                            </li>
                            <li>
                                <img src="{{asset('homes')}}/index/img/images/14.jpg" />
                                <div class="imbox">
                                    <div class="im1">吕小川</div>
                                    <div class="im2"><span></span>&nbsp;人像摄影师</div>
                                    <div class="im3">著名摄影人</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="gengduo ">
                        <a href="#">
                            <span>查看更多</span>
                        </a>
                    </div>
                    <div class="gengduo gengduo1">
                        <a href="#">
                            <span>申请入驻</span>
                        </a>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
@endsection()
@section('script')
    <script src="{{asset('homes')}}/index/js/index.js"></script>
@endsection()