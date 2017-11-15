$(function() {


    var count = 0;
    // setInterval(function() {
    //     $(".arrow-right").click();
    // }, 5000);

    $(".arrow-right").click(function() {
        count++;


        if (count == $(".mid-left li").length) {
            count = 0;
        }
        //让count渐渐的显示，其他兄弟渐渐的隐藏
        $(".mid-left li").eq(count).stop().fadeIn().siblings("li").fadeOut();
    });


    $(".arrow-left").click(function() {
        count--;

        if (count == -1) {
            count = $(".mid-left li").length - 1;
        }
        //让count渐渐的显示，其他兄弟渐渐的隐藏

        $(".mid-left li").eq(count).fadeIn().siblings("li").fadeOut();

    });

    //公告切换
    $(".right-top>ul>li").mouseenter(function() {
        var index = $(this).index();
        $(".right-content>ul>li").eq(index).show().siblings().hide();

    })

});