/***加载指定编号的产品详情***/
$.ajax({
  url: 'http://www.codeboy.com/js/data/product/details.php',
  data: 'lid='+location.search.split('=')[1],
  success: function(result){
    $('body > .loading').hide();
    console.log(result);
    var details = result.details;
    var family = result.family;
    $('#fname').html(family.fname);

    $('#mImg').attr('src', details.picList[0].md);
    //缩略图
    var html = '';
    $.each(details.picList, function(i, pic){
      if(i<5){
        html += `<li class="i1"><img src="${pic.sm}" data-md="${pic.md}" data-lg="${pic.lg}"></li>`;
      }
    })
    $('#icon_list').html(html);
    $('.right_detail .title').html(details.title);
    $('.right_detail .subtitle').html(details.subtitle);
    $('#pro_price span').html('￥'+details.price);
    $('.price .promise').html('<b>服务承诺：</b>'+details.promise);
    //规格
    var html = '<s>规格：</s><div>';
    $.each(family.laptopList, function(i, laptop){
      html += `<a href="http://www.codeboy.com/js/product_details.html?lid=${laptop.lid}" class="http://www.codeboy.com/js/avenge ${laptop.lid===details.lid?'borderChange':''}">${laptop.spec}</a>`;
    });
    html += '</div>';
    $('.spec').html(html);
    //详细参数
    var html = `
      <li><a href="#">商品名称：${details.lname}</a></li>
      <li><a href="#">系统：${details.os}</a></li>
      <li><a href="#">内存容量：${details.memory}</a></li>
      <li><a href="#">分辨率：${details.resolution}</a></li>
      <li><a href="#">显卡型号：${details.video_card}</a></li>
      <li><a href="#">处理器：${details.cpu}</a></li>
      <li><a href="#">显存容量：${details.video_memory}</a></li>
      <li><a href="#">分类：${details.category}</a></li>
      <li><a href="#">硬盘容量:${details.disk}</a></li>
    `;
    $('#parm ul').html(html);
    //详细介绍
    $('#product_introduction').append(details.details);

    //显示产品细节主体
    $('.product_details').show();
  }
})

/**监听商品缩略图单击事件，显示对应的中等尺寸图片**/
$('#icon_list').on('click', 'li img', function(){
  $('#mImg').attr('src', $(this).data('md'));
})

/**添加到购物车 立即购买 收藏部分**/
$(function () {
  var nav = $("#tab"); //得到导航对象
  var aside = $(".aside_nav");//右侧导航
  var win = $(window); //得到窗口对象
  var sc = $(document);//得到document文档对象。
  win.scroll(function () {
    if (sc.scrollTop() >= 1000) {
      nav.addClass("fixed_tab");
      aside.addClass("fixed_aside");
    }
    else {
      nav.removeClass("fixed_tab");
      aside.removeClass("fixed_aside");
    }
  })

  win.scroll(function () {
    if (sc.scrollTop() >= 60 && sc.scrollTop() < 1000) {
      $("#top").addClass("fixed_nav");
    }
    else {
      $("#top").removeClass("fixed_nav");
    }
  })
  //介绍区域右侧导航
  $("#iteminfo .right p").click(function () {
    //$(this).addClass("clic").siblings().removeClass("clic");
    $(this).css("background-color", "#0AA1ED").siblings().css("background-color", "#e8e8e8");
    $(this).find("a").css("color", "#fff").parent().siblings().find("a").css("color", "#828282")
  })
  /**选择商品进行添加 悬停效果**/
  $(".spec").on('mouseenter', '.avenge',function () {
    $(this).css({"border": "1px solid #0AA1ED", "color": "#0AA1ED"});
  }).on('mouseleave', '.avenge', function () {
    $(this).css({"border": "1px solid #666", "color": "#666"})
  })

  /**添加到收藏**/
  $("#collect").click(function (e) {
    e.preventDefault();
    location.href = "http://www.codeboy.com/js/my_collect.html";
  })
  /**数量添加**/
  var n = $("#buy-num").val() * 1;
  $(".numberMinus").click(function () {
    if (n >= 1) {
      $("#buy-num").val(n -= 1);
    }
  })
  $(".numberAdd").click(function () {
    $("#buy-num").val(n += 1);
  })
})
//加入购物车操作
$("body").on('click', "#add_cart, #buy_now", function (e) {
  e.preventDefault();
  //获取购买数量
  var buyCount = $("#buy-num").val();
  $.ajax({
    type: 'POST',
    url: 'http://www.codeboy.com/js/data/cart/add.php',
    data: {lid:location.search.split('=')[1], buyCount: buyCount},
    success: function(result){
      if(result.code===300){
        alertMsg('您尚未登录！');
        $('#alertMsg_btn1').click(function () {
          location.href = 'http://www.codeboy.com/js/login.html';
        });
      }else if(result.code===200){
        alertMsg('添加成功！');
        $('#alertMsg_btn1').click(function () {
          location.href = 'http://www.codeboy.com/js/cart.html';
        });
      }else {
        alertMsg('<b添加失败！</b><p>错误原因为：'+result.msg+'</p>');
      }
    }
  })

})