<template>
<div>
   <div class="goods">
     <div class="menu-wrapper" ref="menuWrapper">
       <ul>
         <li v-for="(item,index) in goods" class="menu-item" :class="{'current':currentIndex === index}" @click="selectMenu(index, $event)">
           <span class="text border-1px">
             <span  class="icon" :class="classMap[item.type]"></span>
              {{item.name}}
           </span>
         </li>
       </ul>
       
     </div>
     <div class="foods-wrapper" ref="foodsWrapper">
       <ul>
         <li v-for="item in goods" class="food-list food-list-hook"> 
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
                  <div class="cartcontrol-wrapper">
                    <cartcontrol :food="food" @add="addFood"></cartcontrol>
                  </div>
                </div>
             </li>
           </ul>
         </li>
       </ul>
     </div>
     <shopcart ref="shopcart" :selectFoods="selectFoods" :deliveryPrice="seller.deliveryPrice"
                :minPrice="seller.minPrice"></shopcart>
   </div>
</div>
</template>
<script>
import BScroll from 'better-scroll';
import shopcart from 'components/shopcart/shopcart';
import cartcontrol from 'components/cartcontrol/cartcontrol';
const ERR_OK = 0;
export default {
  data () {
    return {
      goods: [],
      listHeight: [],
      scrollY: 0
    };
  },
  computed: {
    currentIndex() {
      for (let i = 0; i < this.listHeight.length; i++) {
        let height1 = this.listHeight[i];
        let height2 = this.listHeight[i + 1];
        if (!height2 || this.scrollY >= height1 && this.scrollY < height2) {
          return i;
        }
      }
      return 0;
    },
    selectFoods() {
      let foods = [];
      // console.log(this.goods);
      this.goods.forEach((good) => {
        good.foods.forEach((food) => {
          if (food.count) {
            foods.push(food);
          }
        });
      });
      return foods;
    }
  },
  props: {
    seller: {
    }
  },
  created() {
    this.classMap = ['decrease', 'discount', 'special', 'invoice', 'guarantee'];
    this.$http.get('/api/goods').then((response) => {
      // console.log(1, response);
      response = response.body;
      if (response.errno === ERR_OK) {
        this.goods = response.data;
        this.$nextTick(() => {
           this._initScroll();
           this._calculateHeight();
        });
        // vue在更新数据的时候是异步的 vue里面有一个$nextTick 实际上是在$nextTick里面执行异步的更新
        // 为什么没有滑动呢 ？ 因为虽然改变了数据 但是DOM里面并没有变化 DOM没有变化 初始化计算高度的时候
        // 会有问题 所以滑不动 把    this._initScroll(); 放到this.$nextTick()里面 传进去一个匿名函数
        // 就能解决异步的问题，这样才能正确的计算到menu的高度 才有滚动效果
      }
    });
  },
  methods: {
      // BScroll有两个参数 第一个是DOM对象 第二个是json
    _initScroll() {
      this.menuScroll = new BScroll(this.$refs.menuWrapper, {
        click: true // 因为better-scroll阻止了默认点击事件
      });
      this.foodsScroll = new BScroll(this.$refs.foodsWrapper, {
        click: true,
        probeType: 3 // 作用： 实时记录滚动的位置 相当于探针的效果
      });
      this.foodsScroll.on('scroll', (pos) => {   // 监听滚动时间  pos 即实时的位置
        this.scrollY = Math.abs(Math.round(pos.y));
      });
    },
    _calculateHeight() {
      let foodList = this.$refs.foodsWrapper.getElementsByClassName('food-list-hook');
      var height = 0;
      this.listHeight.push(height); // 坑
      for (var i = 0; i < foodList.length; i++) {
        var item = foodList[i];
        height += item.clientHeight;
        this.listHeight.push(height);
      }
    },
    selectMenu(index, event) {
      if (!event._constructed) {
        return;
      }
      // console.log(index);
      let foodsList = this.$refs.foodsWrapper.getElementsByClassName('food-list-hook');
      let el = foodsList[index];
      this.foodsScroll.scrollToElement(el, 300);
    },
    addFood(target) {
      this._drop(target);
    },
    _drop(target) {
      this.$nextTick(() => {
         this.$refs.shopcart.drop(target);
      });
    }
  },
  components: {
    shopcart,
    cartcontrol
  },
  events: {
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
        &.current
          position relative
          margin-top  -1px
          z-index 10
          background #fff
          font-weight 700
          .text
            broder-none()
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
            line-height 12px
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
          .cartcontrol-wrapper
            position absolute
            bottom 0 
            right 0

            
</style>