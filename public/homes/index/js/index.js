//切换轮播图
$(document).ready(function(){
    var index=0;//表示当前显示图片的索引  核心：数据
    //点击左侧按钮切换到上一张
    $('.arrow-left').click(function(){
        index--;//改变索引值
        if(index<0){
            index=$('.mid-left li').length-1;//复位
        }
        $('.mid-left li').eq(index).fadeIn().siblings("li").fadeOut();
    });
    //点击右侧按钮切换到下一张
    $('.arrow-right').click(function(){
        index++;//索引值改变
        //index的边界检测
        if(index>=$('.mid-left li').length){
            index=0;//复位
        }
        $('.mid-left li').eq(index).fadeIn().siblings("li").fadeOut();
    });
    //公告切换
    $(".right-top>ul>li").mouseenter(function() {
        var index = $(this).index();
        $(".right-content>ul>li").eq(index).show().siblings().hide();

    });
});







// $(function() {
//     var count = 0;
//     // setInterval(function() {
//     //     $(".arrow-right").click();
//     // }, 5000);
//     $(".arrow-right").click(function() {
//         count++;
//         if (count == $(".mid-left li").length) {
//             count = 0;
//         }
//         //让count渐渐的显示，其他兄弟渐渐的隐藏
//         $(".mid-left li").eq(count).stop().fadeIn().siblings("li").fadeOut();
//     });
//     $(".arrow-left").click(function() {
//         count--;
//         if (count == -1) {
//             count = $(".mid-left li").length - 1;
//         }
//         //让count渐渐的显示，其他兄弟渐渐的隐藏
//         $(".mid-left li").eq(count).fadeIn().siblings("li").fadeOut();
//     });


    // //
    // $('#linkZhu').click(function () {
    //     $('#login').show();
    //     $('#bg').show();
    // });
    // $('#closeBtn').click(function () {
    //     $('#login').hide();
    //     $('#bg').hide();
    // })



// });