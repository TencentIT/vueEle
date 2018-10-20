<template>
<div>
   <div class="goods">
     <div class="menu-wrapper" ref="menuWrapper">
       <ul>
         <li v-for="item in goods" class="menu-item">
           <span class="text border-1px">
             <span  class="icon" :class="classMap[item.type]"></span>
              {{item.name}}
           </span>
         </li>
       </ul>
       
     </div>
     <div class="foods-wrapper" ref="foodsWrapper">
       <ul>
         <li v-for="item in goods" class="food-list"> 
           <h1 class="title">{{item.name}}</h1>
           <ul>
             <li v-for="food in item.foods" class="food-item border-1px">
                <div class="icon">
                  <img :src="food.icon"  width="57" height="57">
                </div>
                <div class="content">
                  <h2 class="name">{{food.name}}</h2>
                  <p class="desc">{{food.description}}</p>
                  <div class="extra">
                    <span class="count">月售{{food.sellCount}}份</span>
                    <span>好评率{{food.rating}}</span>
                  </div>
                  <div class="price">
                    <span class="now">￥{{food.price}}</span>
                    <span v-show="food.oldPrice" class="old">￥{{food.oldPrice}}</span>
                  </div>
                </div>
             </li>
           </ul>
         </li>
       </ul>
     </div>
   </div>
</div>
</template>
<script>
import BScroll from 'better-scroll';
const ERR_OK = 0;
export default {
  data () {
    return {
      goods: []
    };
  },
  props: {
    seller: {
      type: Object
    }
  },
  created() {
    this.classMap = ['decrease', 'discount', 'special', 'invoice', 'guarantee'];
    this.$http.get('/api/goods').then((response) => {
      console.log(1, response);
      response = response.body;
      if (response.errno === ERR_OK) {
        this.goods = response.data;
        this.$nextTick(() => {
           this._initScroll();
        });
        // vue在更新数据的时候是异步的 vue里面有一个$nextTick 实际上是在$nextTick里面执行异步的更新
        // 为什么没有滑动呢 ？ 因为虽然改变了数据 但是DOM里面并没有变化 DOM没有变化 初始化计算高度的时候
        // 会有问题 所以滑不动 把    this._initScroll(); 放到this.$nextTick()里面 传进去一个匿名函数
        // 就能解决异步的问题，这样才能正确的计算到menu的高度 才有滚动效果
      }
    });
  },
  methods: {
    _initScroll() {
      this.menuScroll = new BScroll(this.$refs.menuWrapper, {});
      // BScroll有两个参数 第一个是DOM对象 第二个是json

      this.foodsWrapper = new BScroll(this.$refs.foodsWrapper, {});
    }
  }
};
</script>
<style lang="stylus" scoped>
@import "../../common/stylus/mixin"
  .goods
    display:flex
    position absolute //由于占满屏幕 所以是 绝对定位
    top:174px
    bottom:46px
    width:100%
    overflow:hidden
    .menu-wrapper
      flex:0 0 80px //分别对应flex-grow flex-shrink flex-basis  第一个是等分 第二个是内容不足缩放情况最后一个是占据剩下空间
      width:80px  //兼容性问题 如果不写 安卓浏览器下会有问题
      background:#f3f5f7  
      .menu-item
        display:table
        height:54px
        width:56px
        line-height:14px
        padding:0 12px
        text-align center
        .icon
          display: inline-block
          vertical-align: top
          width: 12px
          height: 12px
          margin-right: 2px
          background-size: 12px 12px
          background-repeat: no-repeat
          &.decrease
            bg-image('decrease_3')
          &.discount
            bg-image('discount_3')
          &.guarantee
            bg-image('guarantee_3')
          &.invoice
            bg-image('invoice_3')
          &.special
            bg-image('special_3')
        .text
          font-size:12px
          width:56px
          vertical-align: middle
          display: table-cell
          border-1px(rgba(7,17,27,0.1))
    .foods-wrapper
      flex:1
      background:#fff
      .title
        font-size 12px
        color rgb(147,153 ,159)
        line-height 26px
        border-left 2px solid #d9dde1
        background  #f3f5f7
        padding-left 14px
      .food-item
        display:flex
        margin 18px
        padding-bottom:18px 
        //注意这里 有个坑 两个li堆叠在一起margin-bottom margin-top 18px 不会叠加为36px所以加个padding-bottom
        border-1px(rgba(7,17,27,0.1))
        &:last-child
          border-none()
          margin-bottom 0//最后一个为0
        .icon
          flex:0 0 57px //又是用到弹性布局的小技巧  图片区域不边 右边文字占满剩余空间 自适应
          margin-right 10px
        .content
          flex:1
          .name
            font-size 14px
            color:rgb(7,17,27)
            height 14px
            line-height 14px
            margin:2px 0 8px 0
          .desc, .extra
            font-size 10px
            color rgb(147,153,159)
            line-height 10px
          .desc
            margin-bottom  8px
          .extra
            font-size 10px
            color rgb(147,153,159)
            line-height 10px
            .count
              margin-right 12px
          .price
            line-height 48px
            .now
              font-weight 700
              margin-right 8px
              font-size 14px
              color rgb(240,20,20)
            .old
              font-size 10px
              color rgb(147,153,159)

            
</style>