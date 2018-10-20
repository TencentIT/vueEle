<template>
<div>
   <div class="goods">
     <div class="menu-wrapper">
       <ul>
         <li v-for="item in goods" class="menu-item">
           <span class="text">
             <span  class="icon" :class="classMap[item.type]">
              
             </span>
              {{item.name}}
           </span>
         
         </li>
       </ul>
       
     </div>
     <div class="foods-wrapper"></div>
   </div>
</div>
</template>
<script>
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
      }
    });
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
        border 1px solid red
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
    .foods-wrapper
      flex:1
      background:#fff
</style>