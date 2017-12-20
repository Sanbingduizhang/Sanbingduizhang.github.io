<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="shortcut icon" href="{{asset('homes')}}/index/img/favicon.ico">
    <link rel="stylesheet" href="{{asset('homes')}}/common/common.css">
    @yield('links')


</head>

<body>

<!--header头部-->
<div id="title">
    <div class="header">
        <div class="header-left">
            <ul>
                <li class="shouye"><a href="{{url('/')}}">首页</a></li>
                <li class="zhaopian"><a href="{{url('home/photo')}}">照片</a></li>
                <li class="wenzhang"><a href="{{url('home/article')}}">文章</a></li>
                <li class="liuyan"><a href="{{url('home/word')}}">留言</a></li>
                <li class="guanyu"><a href="{{url('home/resume')}}">关于</a></li>

            </ul>
        </div>
        <div class="header-right">
            <ul>
                <li><a id="linkZhu" href="javascript:void(0);">注册</a></li>
                <li><a id="linkSub" href="javascript:void(0);">登录</a></li>

            </ul>
        </div>


    </div>

</div>
<div id="coverGo">
    <!--<div class="login-header"><a id="link" href="javascript:void(0);">点击，弹出登录框</a></div>-->
    <!-- 登录功能 -->
    <div id="login" class="login">
        <div id="title1" class="login-title">登录会员
            <span><a id="closeBtn" href="javascript:void(0);" class="close-login">关闭</a></span>
        </div>
        <div class="login-input-content">
            <div class="login-input">
                <label>用户名：</label>
                <input type="text" placeholder="请输入用户名" name="username" id="username" class="list-input">
            </div>
            <div class="login-input">
                <label>登录密码：</label>
                <input type="password" placeholder="请输入登录密码" name="password" id="password" class="list-input">
            </div>
        </div>
        <div id="loginBtn" class="login-button"><a href="javascript:void(0);" id="login-button-submit">登录会员</a></div>
    </div>
    <!-- 遮盖层 -->
    <div id="bg" class="login-bg"></div>
    <!-- 注册功能 -->
    <div id="zhuce" class="login">
        <div id="title1" class="login-title">注册会员
            <span><a id="closeBtn1" href="javascript:void(0);" class="close-login">关闭</a></span>
        </div>
        <div class="login-input-content">
            <div class="login-input">
                <label>用户名：</label>
                <input type="text" placeholder="请输入用户名" name="username1" id="username1" class="list-input">
            </div>
            <div class="login-input">
                <label>密码：</label>
                <input type="password" placeholder="请输入登录密码" name="password1" id="password1" class="list-input">
            </div>
        </div>
        <div id="loginBtn" class="login-button"><a href="javascript:void(0);" id="login-button-submit">注册会员</a></div>
    </div>
    <!-- 遮盖层 -->
    <div id="bg" class="login-bg"></div>

</div>
@yield('content')

{{--底部--}}
<div id="bottom">
    <div class="bannerd">
        <div class="bannerdt">
            <div class="banttt bant1">
                <a href="#">
                    <h1>
                        <img src="{{asset('homes')}}/common/img/foot.png" />
                    </h1>
                </a>
            </div>
            <div class="banttt bant2">
                <div class="lianjie1">
                    <ul>
                        <li><a href="#">关于我们</a>|</li>
                        <li><a href="#">加入我们</a>|</li>
                        <li><a href="#">合作申请</a>|</li>
                        <li><a href="#">意见反馈</a></li>
                    </ul>
                </div>
                <div class="shenhe">
                    <span>由本人亲制</span> 待审核
                </div>
            </div>
            <div class="banttt bant3">
                <div class="guanzhu">
                    <div class="guanwo">关注我们：</div>
                    <img src="{{asset('homes')}}/common/img/weixin.jpg" alt="">

                </div>
            </div>
        </div>
        <div class="bannerdb">
            <div class="banndbt">
                <div class="zzz">友情链接：</div>
                <ul>
                    <li>
                        <a href="#">伞兵小队</a>|
                    </li>
                    <li>
                        <a href="#">壮哉104</a>|
                    </li>
                    <li>
                        <a href="#">都会成为老男孩</a>|
                    </li>
                    <li>
                        <a href="#">D350</a>|
                    </li>
                    <li>
                        <a href="#">大邳</a>|
                    </li>
                    <li>
                        <a href="#">站长之家</a>
                    </li>
                    <li>
                        <a href="{{url('admin/login')}}">管理员</a>
                    </li>

                </ul>
            </div>
            <div class="banndbb">
                Powered by Sanbing v1.0.0 &copy;2017 伞兵一队
            </div>
        </div>
    </div>
    <div id="clear"></div>
</div>
<script src="{{asset('homes')}}/jquery-1.12.4.js"></script>
<script src="{{asset('homes')}}/common/common.js"></script>
@yield('script')
</body>

</html>