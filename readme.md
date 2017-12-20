<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About 

本项目为个人blog或是个人网站，仅供个人使用；
项目采用laravel框架进行编写；
前台页面根据借鉴好知网布局，代码由自己编写，包括首页，文章，照片，留言和关于；
前台：{
整体框架已搭建，但是内容尚未填充；
首页显示有文章和话题，单机更多按钮会跳转到相应页面展示
照片是采用jq插件库中的插件，进行了一小部分的改动，图片暂用原图，留待以后更新；
文章模块的内容是通过laravel自带的填充数据进行填充，因为网上文章的抓取会出现乱码，所以留待以后写一些关于技术类（包括前后端的）；
留言和关于暂未更新；


}

后台采用H-Ui.admin模板，进行整体的编写，但是主要内容还是自己通过数据库进行获取；
后台：{
后台仅仅写了管理员登录功能，通过laravel自带的validator验证和防csrf攻击等；可点击首页下方的管理员查看，数据库导出在github上面，仅为暂时测试数据；
内容书写暂未填充，留待更新；
}


