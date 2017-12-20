@extends('home.layouts.common')
@section('title','图片')
@section('links')
    <link rel="stylesheet" href="{{asset('homes')}}/photo/css/photo.css">
@endsection

@section('content')
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 800px; height: 456px; overflow: hidden; visibility: hidden; background-color: #24262e;">
        <!-- Loading Screen -->
        <div id="loadingScreen" data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('{{asset('homes')}}/photo/img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 356px; overflow: hidden;">
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/01.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-01.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/02.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-02.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/03.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-03.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/04.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-04.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/05.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-05.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/06.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-06.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/07.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-07.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/08.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-08.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/09.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-09.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/10.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-10.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/11.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-11.jpg" />
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="{{asset('homes')}}/photo/img/12.jpg" />
                <img data-u="thumb" src="{{asset('homes')}}/photo/img/thumb-12.jpg" />
            </div>
        </div>
        <!-- Thumbnail Navigator -->
        <div data-u="thumbnavigator" class="jssort01" style="position:absolute;left:0px;bottom:0px;width:800px;height:100px;" data-autocenter="1">
            <!-- Thumbnail Item Skin Begin -->
            <div data-u="slides" style="cursor: default;">
                <div data-u="prototype" class="p">
                    <div class="w">
                        <div data-u="thumbnailtemplate" class="t"></div>
                    </div>
                    <div class="c"></div>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora05l" style="top:158px;left:8px;width:40px;height:40px;"></span>
        <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;"></span>

    </div>


@endsection()


@section('script')
    <script type="text/javascript" src="{{asset('homes')}}/photo/js/jssor.slider.mini.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->
    <script src="{{asset('homes')}}/photo/js/photo.js"></script>
@endsection()


