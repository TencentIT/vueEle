/*异步加载页面内容*/
$(function () {
  $.ajax({
    url: 'http://www.codeboy.com/js/data/product/index.php',
    success: function (data) {
      //1.加载轮播广告项
      var adHtml = '';
      var indicatorHtml = '';
      for (var i = 0; i < data.carouselItems.length; i++) {
        var c = data.carouselItems[i];
        adHtml += `
                <li ${i > 0 ? 'style="display:none;"' : ''}>
                    <a href="${c.href}"><img src="${c.img}"></a>
                </li>
                `;
        indicatorHtml += `
                    <li class="${i === 0 ? 'current' : ''}"><em>${i + 1}</em></li>
                `;
      }
      $('.ck-slide .ck-slide-wrapper').html(adHtml);
      $('.dot-wrap').html(indicatorHtml);
      $('.ck-slide').ckSlide({
        autoPlay: true,//默认为不自动播放，需要时请以此设置
        dir: 'x',//默认效果淡隐淡出，x为水平移动，y 为垂直滚动
        interval: 3000//默认间隔2000毫秒
      });

      //2.加载“首页推荐”
      var html = `
            <div>
              <div class="desc">
                <p class="name">${data.recommendedItems[0].title}</p>
                <p class="details">${data.recommendedItems[0].details}</p>
                <p class="price">￥${data.recommendedItems[0].price}</p>
                <a href="${data.recommendedItems[0].href}" class="view">查看详情</a>
              </div>
              <img src="${data.recommendedItems[0].pic}">
            </div>
            <div>
              <img src="${data.recommendedItems[1].pic}">
              <div class="desc">
                <p class="name">${data.recommendedItems[1].title}</p>
                <p class="details">${data.recommendedItems[1].details}</p>
                <p class="price">￥${data.recommendedItems[1].price}</p>
                <a href="${data.recommendedItems[1].href}" class="view">查看详情</a>
              </div>
            </div>
            <div>
              <div class="desc">
                <p class="name">${data.recommendedItems[2].title}</p>
                <p class="price">￥${data.recommendedItems[2].price}</p>
                <a href="${data.recommendedItems[2].href}" class="view">查看详情</a>
              </div>
              <img src="${data.recommendedItems[2].pic}">
            </div>
            <div class="product ">
              <img src="${data.recommendedItems[3].pic}" alt=""/>
              <h2>${data.recommendedItems[3].title}</h2>
              <p>￥${data.recommendedItems[3].price}</p>
              <a href="${data.recommendedItems[3].href}">查看详情</a>
            </div>
            <div class="product ">
              <img src="${data.recommendedItems[4].pic}" alt=""/>
              <h2>${data.recommendedItems[4].title}</h2>
              <p>￥${data.recommendedItems[4].price}</p>
              <a href="${data.recommendedItems[4].href}">查看详情</a>
            </div>
            <div class="product ">
              <img src="${data.recommendedItems[5].pic}" alt=""/>
              <h2>${data.recommendedItems[5].title}</h2>
              <p>￥${data.recommendedItems[5].price}</p>
              <a href="${data.recommendedItems[5].href}">查看详情</a>
            </div>
            `;
      $('#f1 .floor_content').html(html);

      //2.加载“最新上架 /F2”
      var html = `
            <div>
              <div class="desc">
                <p class="name">${data.newArrivalItems[0].title}</p>
                <p class="details">${data.newArrivalItems[0].details}</p>
                <p class="price">￥${data.newArrivalItems[0].price}</p>
                <a href="${data.newArrivalItems[0].href}" class="view">查看详情</a>
              </div>
              <img src="${data.newArrivalItems[0].pic}">
            </div>
            <div>
              <img src="${data.newArrivalItems[1].pic}">
              <div class="desc">
                <p class="name">${data.newArrivalItems[1].title}</p>
                <p class="details">${data.newArrivalItems[1].details}</p>
                <p class="price">￥${data.newArrivalItems[1].price}</p>
                <a href="${data.newArrivalItems[1].href}" class="view">查看详情</a>
              </div>
            </div>
            <div>
              <div class="desc">
                <p class="name">${data.newArrivalItems[2].title}</p>
                <p class="price">￥${data.newArrivalItems[2].price}</p>
                <a href="${data.newArrivalItems[2].href}" class="view">查看详情</a>
              </div>
              <img src="${data.newArrivalItems[2].pic}">
            </div>
            <div class="product ">
              <img src="${data.newArrivalItems[3].pic}" alt=""/>
              <h2>${data.newArrivalItems[3].title}</h2>
              <p>￥${data.newArrivalItems[3].price}</p>
              <a href="${data.newArrivalItems[3].href}">查看详情</a>
            </div>
            <div class="product ">
              <img src="${data.newArrivalItems[4].pic}" alt=""/>
              <h2>${data.newArrivalItems[4].title}</h2>
              <p>￥${data.newArrivalItems[4].price}</p>
              <a href="${data.newArrivalItems[4].href}">查看详情</a>
            </div>
            <div class="product ">
              <img src="${data.newArrivalItems[5].pic}" alt=""/>
              <h2>${data.newArrivalItems[5].title}</h2>
              <p>￥${data.newArrivalItems[5].price}</p>
              <a href="${data.newArrivalItems[5].href}">查看详情</a>
            </div>
            `;
      $('#f2 .floor_content').html(html);

      //2.加载“热卖单品 /F3”
      var html = `
            <div>
              <div class="desc">
                <p class="name">${data.topSaleItems[0].title}</p>
                <p class="details">${data.topSaleItems[0].details}</p>
                <p class="price">￥${data.topSaleItems[0].price}</p>
                <a href="${data.topSaleItems[0].href}" class="view">查看详情</a>
              </div>
              <img src="${data.topSaleItems[0].pic}">
            </div>
            <div>
              <img src="${data.topSaleItems[1].pic}">
              <div class="desc">
                <p class="name">${data.topSaleItems[1].title}</p>
                <p class="details">${data.topSaleItems[1].details}</p>
                <p class="price">￥${data.topSaleItems[1].price}</p>
                <a href="${data.topSaleItems[1].href}" class="view">查看详情</a>
              </div>
            </div>
            <div>
              <div class="desc">
                <p class="name">${data.topSaleItems[2].title}</p>
                <p class="price">￥${data.topSaleItems[2].price}</p>
                <a href="${data.topSaleItems[2].href}" class="view">查看详情</a>
              </div>
              <img src="${data.topSaleItems[2].pic}">
            </div>
            <div class="product ">
              <img src="${data.topSaleItems[3].pic}" alt=""/>
              <h2>${data.topSaleItems[3].title}</h2>
              <p>￥${data.topSaleItems[3].price}</p>
              <a href="${data.topSaleItems[3].href}">查看详情</a>
            </div>
            <div class="product ">
              <img src="${data.topSaleItems[4].pic}" alt=""/>
              <h2>${data.topSaleItems[4].title}</h2>
              <p>￥${data.topSaleItems[4].price}</p>
              <a href="${data.topSaleItems[4].href}">查看详情</a>
            </div>
            <div class="product ">
              <img src="${data.topSaleItems[5].pic}" alt=""/>
              <h2>${data.topSaleItems[5].title}</h2>
              <p>￥${data.topSaleItems[5].price}</p>
              <a href="${data.topSaleItems[5].href}">查看详情</a>
            </div>
            `;
      $('#f3 .floor_content').html(html);
    }
  });
});