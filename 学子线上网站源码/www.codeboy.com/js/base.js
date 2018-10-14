/*异步加载页头和页尾*/
$('body > .header').load('http://www.codeboy.com/js/header.html',function(){
    $.ajax({
        url: 'http://www.codeboy.com/js/data/user/session_data.php',
        success: function(result){
            if(result.uname){
                $('.login_info').html('<li>&nbsp;欢迎:'+result.uname+' <a href="http://www.codeboy.com/js/logout.html" title="退出登录">退出</a><b>|</b></li><li><a href="http://www.codeboy.com/js/uc_basic.html" title="用户中心">用户中心</a></li>');
                $('[href="http://www.codeboy.com/js/logout.html"]').click(function(e){
                    e.preventDefault();
                    $.ajax({
                        url: 'http://www.codeboy.com/js/data/user/logout.php',
                        success: function(result){
                            if(result.code===200){
                                alertMsg('<h4>退出成功</h4>点击确定重新返回登录页面');
                                $('#alertMsg').on('click', '#alertMsg_btn1 cite', function (e) {
                                    e.preventDefault();
                                    location.href = 'http://www.codeboy.com/js/login.html';
                                })
                            }else {
                                alertMsg('登录退出失败！原因：'+result.msg);
                            }
                        }
                    })
                });
            }
        }
    });
});
$('body > .footer').load('http://www.codeboy.com/js/footer.html');

/**头部搜索按钮**/
$('body').on('click', '#search', function(){
    var kw = $('.input-kw').val();
    var loc = 'http://www.codeboy.com/js/products.html';
    if(kw){
        loc += '?kw='+kw;
    }
    location.href = loc;
})

/*实现导航固定*/
$(function(){
    var nav=$("#top"); //得到导航对象
    var win=$(window); //得到窗口对象
    var sc=$(document);//得到document文档对象。
    win.scroll(function(){
        if(sc.scrollTop()>=60){
            nav.addClass("fixed_nav");
        }
        else{
            nav.removeClass("fixed_nav");
        }
    })
})
//nav 导航
$('#nav>ul>li').click(function(){
    $(this).children().addClass('activ');
    $(this).siblings().children().removeClass('activ');
})
//手风琴效果
$(function () {
    $(".bellows_item:first-child").addClass("bellows_open");
    $(".bellows_content-wrapper").hide();
    $(".bellows_header").click(function (){
        $(this).next().slideDown()
        $(this).parent(".bellows_item").addClass("bellows_open")
        $(".bellows_header").not(this).next().slideUp()
        $(".bellows_header").not(this).parent(".bellows_item").removeClass("bellows_open")
    });
    $('.bellows_header').on('click', 'h3', function (e) {
        $(e.target).removeClass('active').siblings('.active').addClass('active');
    });
})

//搜索下拉
$('.seek').focus(function(){

    if($(this).hasClass('clickhover')){

        $(this).removeClass('clickhover');
        $(this).find('.seek_content').hide();
        $(this).find('img').attr('src','img/header/header_normal.png'/*tpa=http://www.codeboy.com/js/img/header/header_normal.png*/);

    }else{
        $(this).addClass('clickhover');
        $(this).find('.seek_content').show();
        $(this).find('img').attr('src','img/header/header_true.png'/*tpa=http://www.codeboy.com/js/img/header/header_true.png*/);
    }
})
$('.seek_content>div').click(function(){
    $('.seek').removeClass('clickhover');
    var text=$(this).html();
    $('.seek span').html(text);
    $(this).parent().hide();
    $('.seek').find('img').attr('src','img/header/header_normal.png'/*tpa=http://www.codeboy.com/js/img/header/header_normal.png*/);
    $('.seek').blur();

})

$('.seek').blur(function(){

    $('.seek').removeClass('clickhover');
    $('.seek_content').hide();

    $('.seek').find('img').attr('src','img/header/header_normal.png'/*tpa=http://www.codeboy.com/js/img/header/header_normal.png*/);
    console.log(1);
})

//自动轮播
$(function(){
    $('#banner .indicator li').click(function(){
        $(this).addClass('active').siblings('.active').removeClass('active');
        var i = $('#banner .indicator li').index(this);
        $($('#banner .inner .item')[i]).addClass('active').siblings('.active').removeClass('active');
    });
    //4个div的统一class = 'div'
    var index =0;
    //3秒轮播一次
    var timer = setInterval(function(){
        index = (index == 3) ? 0 : index + 1;
        //某个div显示，其他的隐藏
        $("#banner .indicator li").eq(index).addClass('active').siblings('.active').removeClass('active');
        $(".item").hide().eq(index).show();
    }, 3000);
})

//头部hover
$(".care").hover(function(){
    $(this).attr('src',"img/header/care1.png"/*tpa=http://www.codeboy.com/js/img/header/care1.png*/);
},function(){
    $(this).attr('src',"img/header/care.png"/*tpa=http://www.codeboy.com/js/img/header/care.png*/);
});
$(".order").hover(function(){
    $(this).attr('src',"img/header/order1.png"/*tpa=http://www.codeboy.com/js/img/header/order1.png*/);
},function(){
    $(this).attr('src',"img/header/order.png"/*tpa=http://www.codeboy.com/js/img/header/order.png*/);
});
$(".shopcar").hover(function(){
    $(this).attr('src',"img/header/shop_car1.png"/*tpa=http://www.codeboy.com/js/img/header/shop_car1.png*/);
},function(){
    $(this).attr('src',"img/header/shop_car.png"/*tpa=http://www.codeboy.com/js/img/header/shop_car.png*/);
});
//首页按钮的渐变效果
$("#gourmet .food_detail .food1 a").addClass("gradient_pink");
$("#product_parameters_main .view_details").addClass("gradient_blue");

//$("#product_parameters_vice1 .view_details").addClass("ys");
//类目页按钮的渐变效果
$(".color_2").addClass("gradient_blue");
$(".color_1").addClass("gradient_pink");

//详情页特效
$('.aside_nav>p').click(function(){
    if($(this).hasClass('')){
        $(this).addClass('click has');
        $(this).siblings().removeClass('click');
        var pic=$(this).find('img').attr('src');

        var slicepic=pic.slice(0,-6);
        var newpic=slicepic+'.png';
        $(this).find('img').attr('src',newpic);
        $(this).siblings().each(function(){
            if($(this).hasClass('has')){
                var pic1=$(this).find('img').attr('src');

                var slicepic1=pic1.slice(0,-4);
                var newpic1=slicepic1+'_1.png';
                $(this).find('img').attr('src',newpic1);
                $(this).removeClass('has');
            }
        })
    }


})

//mode为空，即只有一个确认按钮，mode为1时有确认和取消两个按钮
function alertMsg(msg, mode) {
    msg = msg || '';
    mode = mode || 0;
    var top = document.body.scrollTop || document.documentElement.scrollTop;
    var isIe = (document.all) ? true : false;
    var isIE6 = isIe && !window.XMLHttpRequest;
    var sTop = document.documentElement.scrollTop || document.body.scrollTop;
    var sLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
    var winSize = function(){
        var xScroll, yScroll, windowWidth, windowHeight, pageWidth, pageHeight;
        // innerHeight获取的是可视窗口的高度，IE不支持此属性
        if (window.innerHeight && window.scrollMaxY) {
            xScroll = document.body.scrollWidth;
            yScroll = window.innerHeight + window.scrollMaxY;
        } else if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac
            xScroll = document.body.scrollWidth;
            yScroll = document.body.scrollHeight;
        } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
            xScroll = document.body.offsetWidth;
            yScroll = document.body.offsetHeight;
        }

        if (self.innerHeight) {    // all except Explorer
            windowWidth = self.innerWidth;
            windowHeight = self.innerHeight;
        } else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
            windowWidth = document.documentElement.clientWidth;
            windowHeight = document.documentElement.clientHeight;
        } else if (document.body) { // other Explorers
            windowWidth = document.body.clientWidth;
            windowHeight = document.body.clientHeight;
        }

        // for small pages with total height less then height of the viewport
        if (yScroll < windowHeight) {
            pageHeight = windowHeight;
        } else {
            pageHeight = yScroll;
        }

        // for small pages with total width less then width of the viewport
        if (xScroll < windowWidth) {
            pageWidth = windowWidth;
        } else {
            pageWidth = xScroll;
        }

        return{
            'pageWidth':pageWidth,
            'pageHeight':pageHeight,
            'windowWidth':windowWidth,
            'windowHeight':windowHeight
        }
    }();
    //遮罩层
    var styleStr = 'top:0;left:0;position:absolute;z-index:10000;background:rgba(0,0,0,.6);width:' + winSize.pageWidth + 'px;height:' +  (winSize.pageHeight + 30) + 'px;';
    var shadowDiv = document.createElement('div'); //添加阴影DIV
    shadowDiv.style.cssText = styleStr; //添加样式
    shadowDiv.id = "shadowDiv";
    //如果是IE6则创建IFRAME遮罩SELECT
    if (isIE6) {
        var maskIframe = document.createElement('iframe');
        maskIframe.style.cssText = 'width:' + winSize.pageWidth + 'px;height:' + (winSize.pageHeight + 30) + 'px;position:absolute;visibility:inherit;z-index:-1;filter:alpha(opacity=0);';
        maskIframe.frameborder = 0;
        maskIframe.src = "about:blank";
        shadowDiv.appendChild(maskIframe);
    }
    document.body.insertBefore(shadowDiv, document.body.firstChild); //遮罩层加入文档


    //弹出框
    var styleStr1 = 'display:block;position:fixed;_position:absolute;left:' + (winSize.windowWidth / 2 - 200) + 'px;top:' + (winSize.windowHeight / 2 - 150) + 'px;_top:' + (winSize.windowHeight / 2 + top - 150)+ 'px;'; //弹出框的位置
    var alertBox = document.createElement('div');
    alertBox.id = 'alertMsg';
    alertBox.style.cssText = styleStr1;
    //创建弹出框里面的内容P标签
    var alertMsg_info = document.createElement('P');
    alertMsg_info.id = 'alertMsg_info';
    alertMsg_info.innerHTML = msg;
    alertBox.appendChild(alertMsg_info);
    //创建按钮
    var btn1 = document.createElement('a');
    btn1.id = 'alertMsg_btn1';
    btn1.href = 'javascript:void(0)';
    btn1.innerHTML = '<cite>确定</cite>';
    btn1.onclick = function () {
        document.body.removeChild(alertBox);
        document.body.removeChild(shadowDiv);
        return true;
    };

    alertBox.appendChild(btn1);
    if (mode === 1) {
        var btn2 = document.createElement('a');
        btn2.id = 'alertMsg_btn2';
        btn2.href = 'javascript:void(0)';
        btn2.innerHTML = '<cite>取消</cite>';
        btn2.onclick = function () {
            document.body.removeChild(alertBox);
            document.body.removeChild(shadowDiv);
            return false;
        };
        alertBox.appendChild(btn2);
    }
   document.body.appendChild(alertBox);
}
	
 

















