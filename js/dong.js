
$(function () {

    //从服务获取 游戏数据
    function getData(url) {
        var newData = [];
        $.ajax({
            type: 'get',
            url: url,
            dataType: 'xml',
            success: function (info) {
                // console.log(info);
                var datas = $(info).find('dict dict dict');
                // console.log(datas);
                var data = [];
                datas.each(function (index, e) {
                    var t = $(e).find('string');
                    // console.log(t);
                    var d = [];
                    var reg = /-?\d+/g;
                    for (var i = 0; i < t.length; i++) {
                        //一组数据
                        d = d.concat(t[i].innerHTML.match(reg));
                    }

                    var r = $(e).find('false');
                    //
                    // console.log(r.length);

                    if (r.length == 1) {
                        d.push(false);
                    } else {
                        d.push(true);
                    }
                    //全部数据
                    data[index] = d;
                })

                // console.log(data);
                //console.log(JSON.stringify(data)); //转成数组
                //原图 x坐标 y坐标  盒子宽 高  偏移x y   手机上的坐标 x y  尺寸 x,y  屏幕尺寸 是否旋转
                //["1562","806","210","114","17","-30","392","293","210","114","960","640","false"]

                for (var i = 0; i < data.length; i++) {
                    var d = [];
                    for (var j = 0; j < data[i].length; j++) {
                        if (j <= 11) {
                            d[j] = Number(data[i][j]);
                        } else {
                            d[j] = Boolean(data[i][j]);
                        }
                    }
                    newData[i] = d;
                }
                //展示数据
            }
        })
        return newData;
    }


    function draw() {

        ctx.clearRect(0, 0, 1500, 1000);
        //写数字
        ctx.font = "30px 微软雅黑";
        //ctx.fillText(index + '-' + arr[index][0] + '-' + arr[index][1] + '-' + arr[index][12], 100, 100);
        //竖着的图片
        if (arr[index][12] == true) {
            ctx.save();

            // ctx.rotate(-90*Math.PI/180);
            ctx.translate(arr[index][6], arr[index][7] + arr[index][3]);
            ctx.rotate(-90 * Math.PI / 180);
            // 		ctx.translate(-arr[index][3]/2,
            // 		-arr[index][3]/2);

            ctx.drawImage(img, arr[index][0], arr[index][1], arr[index][3], arr[index][2],
                0, 0, arr[index][3], arr[index][2]);
            ctx.restore();

        } else {
            ctx.drawImage(img, arr[index][0], arr[index][1], arr[index][2], arr[index][3],
                arr[index][6], arr[index][7], arr[index][2], arr[index][3]);
        }

        // ctx.drawImage(img, arr[index][0], arr[index][1],arr[index][2],arr[index][3],
        //    arr[index][6],arr[index][7],arr[index][2],arr[index][3]);
        //特效
        if (flag) {
            if (arr2[index][12] == true) {
                ctx.save();

                // ctx.rotate(-90*Math.PI/180);
                ctx.translate(arr2[index][6]*2, arr2[index][7]*2 + arr2[index][3]*2);
                ctx.rotate(-90 * Math.PI / 180);
                // 		ctx.translate(-arr[index][3]/2,
                // 		-arr[index][3]/2);

                ctx.drawImage(imgEffup, arr2[index][0], arr2[index][1], arr2[index][3], arr2[index][2],

                    0, 0, arr2[index][3]*2, arr2[index][2]*2);
                ctx.restore();

            } else {
                ctx.drawImage(imgEffup, arr2[index][0], arr2[index][1], arr2[index][2], arr2[index][3],
                    arr2[index][6] * 2, arr2[index][7] * 2, arr2[index][2] * 2, arr2[index][3] * 2);
            }

        }

        index++;
        if (index >= arr.length) {
            index = 1;
        }


    }

    var index = 0;
    var arr = [];
    var arr2 = [];
    var ctx;
    var img;
    var imgEffup;
    var timer = null;
    var flag = true;

    function init(id, dataurl, imgurl,effdata,effurl) {
        var MC = document.getElementById(id);
        ctx = MC.getContext("2d");

        img = new Image();
        img.src = imgurl;
        if (flag) {
            imgEffup = new Image();
            imgEffup.src = effurl;
        }

        img.onload = function () {
            arr = getData(dataurl);
            if (flag) {
                arr2 = getData(effdata);
            }


            // console.log('arr2:-----------------');
            // console.log(arr2);
            timer = setInterval(draw, 50)
        }
    }

    init('myCanvas', './data/1005_role.plist', './data/1005_role.png','./data/1005_effup.plist', './data/1005_effup.png');


    $('button').click(function () {
        if($(this).attr('flag')=='true'){
            flag=true;
        }else{
            flag=false;
        }

        index=0;
        clearInterval(timer);
        var dataUrl = './data/' + $(this).val() + '_role.plist';
        var imgUrl = './data/' + $(this).val() + '_role.png';
        var effdataUrl='./data/' + $(this).val() + '_effup.plist';
        var effimgUrl='./data/' + $(this).val() + '_effup.png';
        init('myCanvas', dataUrl, imgUrl,effdataUrl,effimgUrl);
    });




})