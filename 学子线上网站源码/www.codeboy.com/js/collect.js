/**
 * Created by ttssiw on 2017/1/3.
 */
//管理收藏夹
$('.manage').click(function(){
    if($('.manage span').hasClass('normal')){
        $('.manage span').removeClass('normal').addClass('show');
        $('.manage span').html('取消管理');
        $('.check_top').show();
        $('.mask').show();
    }else{
        $('.manage span').removeClass('show').addClass('normal');
        $('.manage span').html('管理收藏夹');
        $('.check_top').hide();
        $('.mask').hide();
    }
})
//单选
$('.mask').click(function(){
    if($(this).children().hasClass('maskNormal')){
        $(this).children().addClass('maskTrue').removeClass('maskNormal');
        $(this).children().children().attr('src','../images/myCollect/product_true_big.png'/*tpa=http://www.codeboy.com/images//myCollect/product_true_big.png*/);
    }else{
        $(this).children().addClass('maskNormal').removeClass('maskTrue');
        $(this).children().children().attr('src','../images/myCollect/product_normal_big.png'/*tpa=http://www.codeboy.com/images/myCollect/product_normal_big.png*/);
    }
})
//全选
$('.all').click(function(){
    if($('.all span').hasClass('normal')){
        $('.all>span').addClass('true').removeClass('normal');
        $('.all>span>img').attr('src','../images/myCollect/product_true.png'/*tpa=http://www.codeboy.com/images/myCollect/product_true.png*/);
        $(".mask>div").each(function() {
            $(this).addClass('maskTrue').removeClass('maskNormal');
            $(this).children('img').attr('src','../images/myCollect/product_true_big-1.png'/*tpa=http://www.codeboy.com/images/myCollect/product_true_big.png*/);
        })
    }else{
        $('.all>span').addClass('normal').removeClass('true');
        $('.all>span>img').attr('src','../images/myCollect/product_normal.png'/*tpa=http://www.codeboy.com/images/myCollect/product_normal.png*/);
        $(".mask>div").each(function() {
            $(this).addClass('maskNormal').removeClass('maskTrue');
            $(this).children('img').attr('src', '../images/myCollect/product_normal_big.png'/*tpa=http://www.codeboy.com/images/myCollect/product_normal_big.png*/);
        })
    }
})

$('.del').click(function(){
    var str=[];
    $('.mask>div').each(function(){
        if($(this).hasClass('maskTrue')){
            var id=$(this).parent().parent().attr('id');
            str.push(id);
        }
    });
    console.log(str);
    if(str.length>0){
        $('.modal').show();
        $('.yes').click(function(){
             $.ajax({
                 type: "POST",
                 url: "http://www.codeboy.com/delCollectItems.html",
                 data: "itemIds="+str,
                 success: function(data){
                 	if (data == '200') {
                 		/*$('.mask').hide();
                 		$(this).next().show();
                 		setTimeout(function(){
                 			window.location.href="http://www.codeboy.com/toMyCollect.html";
                 		},1000);*/
                 		alert("删除成功！");
                 		window.location.href="http://www.codeboy.com/toMyCollect.html";
     				}else if(data == '500'){
    					alert("删除失败！");
    				}else {
    					window.location.href = data;
    				}
                 }
             });
        })
        $('.no').click(function(){
            $('.modal').hide();
        })
    }else{
        $('.modalNo').fadeIn();
        $('.close').click(function(){
            $('.modalNo').fadeOut();
        })
    }
})
$('.allAdd').click(function(){
    var str=[];
    $('.mask>div').each(function(){
        if($(this).hasClass('maskTrue')){
            var id=$(this).parent().parent().attr('id');
            str.push(id);
        }
    });
    console.log(str);
    if(str.length>0){
        $.ajax({
            type: "POST",
            url: "http://www.codeboy.com/collectToCartByItemIds.html",
            data: "itemIds="+str,
            success: function(data){
            	if (data == '200') {
            		/*$('.mask').hide();
            		$(this).next().show();
            		setTimeout(function(){
            			window.location.href="http://www.codeboy.com/toMyCollect.html";
            		},1000);*/
            		alert("加入购物车成功！");
            		window.location.href="http://www.codeboy.com/toMyCollect.html";
				}else if(data == '500'){
					alert("加入 购物车失败！");
				}else {
					window.location.href = data;
				}
            }
        });
    }else{
        $('.modalAdd').fadeIn();
        $('.close').click(function(){
            $('.modalAdd').fadeOut();
        })
    }
})
//单独添加购物车
$('.addCart').click(function(){
    var id= $(this).parent().parent().attr('id');
    console.log(id);
    $.ajax({
        type: "POST",
        url: "http://www.codeboy.com/collectToCartByItemId.html",
        data: "itemId="+id,
        success: function(data){
        	if (data == '200') {
        		/*$(this).next().show();*/
        		alert("加入购物车成功！");
        		window.location.href="http://www.codeboy.com/toMyCollect.html";
			}else if(data == '500'){
				alert("加入 购物车失败！");
			}else {
				window.location.href = data;
			}
        	
        }
    });
})
//头部hover
$(".care").hover(function(){
    $(this).attr('src',"../images/header/care1.png"/*tpa=http://www.codeboy.com/images/header/care1.png*/);
},function(){
    $(this).attr('src',"../images/header/care.png"/*tpa=http://www.codeboy.com/images/header/care.png*/);
});
$(".order").hover(function(){
    $(this).attr('src',"../images/header/order1.png"/*tpa=http://www.codeboy.com/images/header/order1.png*/);
},function(){
    $(this).attr('src',"../images/header/order.png"/*tpa=http://www.codeboy.com/images/header/order.png*/);
});
$(".shopcar").hover(function(){
    $(this).attr('src',"../images/header/shop_car1.png"/*tpa=http://www.codeboy.com/images/header/shop_car1.png*/);
},function(){
    $(this).attr('src',"../images/header/shop_car.png"/*tpa=http://www.codeboy.com/images/header/shop_car.png*/);
});