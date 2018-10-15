<template>
    <div class="header">
        <div class="content-wrapper">
            <div class="avatar">
                <img :src="seller.avatar" width="64" height="64">
            </div>
            <div class="content">
                <div class="title">
                    <span class="brand"></span>
                    <span class="name">{{seller.name}}</span>
                </div>
                <div class="description">
                   {{seller.description}}/{{seller.deliveryTime}}分钟送达
                </div>
                 <div class="support">  
                <!--通过 v-if="seller.support" 判断是否存在 因为后端请求数据的过程是异步的 app.vue 里面是先在data里面生命
                    seller  此时seller是undefined  但是seller此时还没有从后端取到数据 所以用v-if做个判断 从后端取到
                    数据成功后 然后显示support这块
                -->
                    <span class="icon" :class="classMap[seller.supports[0].type]"></span>
                    <span class="text">{{seller.supports[0].description}}</span>
                 </div>
            </div>
            <div v-if="seller.supports" class="support-count" @click="showDetal">
                <span class="count">{{seller.supports.length}}</span>
                <i class="icon-keyboard_arrow_right"></i>
            </div>
           

        </div>
        <div class="bluetin-wrapper" @click="showDetal">
            <span class="bulletin-title"></span>
            <span class="bulletin-text">{{seller.bulletin}}</span>
            <i class="icon-keyboard_arrow_right"></i>
        </div>
        <!-- header模糊背景图 -->
        <div class="background">
            <img :src="seller.avatar" alt="" width="100%" height="100%">
        </div>
        <!-- 模糊弹层 通过v-show来控制显示隐藏 -->
        <div class="detail" v-show="detailShow">
          <div class="detail-wrapper clearfix">
            <div class="detail-main"></div>
          </div>
          <div class="detail-close"></div>
        </div>
    </div>
</template>
<script>
export default {
    props:{
        seller:{
            type:Object
        },
        created(){  //  与后   台对应的no  0 1 2 3 4 5个类 
            this.classMap=['decrease','discount','special','invoice','guarantee']
        }
    },
    data(){
      return{
        detailShow:false
      }   
    },
    methods:{
      showDetal(){
        this.detailShow = true
      }
    }
}
</script>
<style lang="stylus">
@import "../../common/stylus/mixin.styl"

.header
  position:relative
  background:rgba(7,17,27,0.5)
  overflow:hidden //由于背景加了滤镜blur的效果  有点露的阴影 所以加个隐藏
  color:#fff
  .content-wrapper
    position:relative
    padding:24px 12px 28px 24px
    font-size:0
    .avatar
      vertical:top
      display:inline-block
      img 
        border-radius:2px
    .content
      display:inline-block
      font-size:14px
      margin-left:16px
      .title
        margin:2px 0 8px 0 
        .brand
          display:inline-block
          vertical-align:top
          width:30px
          height:18px
          bg-image("brand")
          background-size:30px 18px
          background-repeat:no-repeat
        .name
          margin-left:6px
          font size 16px
          color:rgb(255,255,255)
          font-weight:bold
          line-height :18px
      .description
        font-size:20px
        line-height :12px
        margin-bottom:10px
      .support
        .icon
          display:inline-block
          vertical-align:top
          width:12px
          height:12px
          margin-right:4px
          background-size:12px 12px
          background-repeat:no-repeat
          &.decrease    /*真实项目中存在多种情况，所以把所有图片class都写了*/
            bg-image('decrease_1')
          &.discount
            bg-image('discount_1')
          &.invoice
            bg-image('invoice_1')
          &.special
            bg-image('special_1')
          &.guarantee
            bg-image('guarantee_1')
        .text
          line-height :12px
          font-size:10px
    .support-count
      position:absolute
      right:12px
      bottom 18px
      height:24px
      line-height :24px
      padding:0 8px
      border-radius:14px
      background:rgba(0,0,0,0.2)
      text-align:center
      .count
        font-size:10px 
      .icon-keyboard_arrow_right
        line-height :24px
        font-size:10px
        margin-left:2px

  .bluetin-wrapper
    positiion:relative
    height:28px
    line-height :28px
    padding:0 12px 0 12px
    /*设置单行显示 多余的用...代替*/
    white-space:nowrap
    overflow:hidden
    text-overflow:ellipsis
    // font-size:0
    .bulletin-title
      display:inline-block
      vertical-align:top
      margin-top:8px
      width:22px
      height:12px
      bg-image('bulletin')
      background-size:22px 12px
      background-repeat:no-repeat
      background:rgba(7,17,27,0.2)
    .bulletin-text
      vertical-align:top
      margin:0 4px
      font-size:10px
    .icon-keyboard_arrow_right
      positiion:absolute
      right:12px
      top:8px
      font-size:10px
  .background   //header模糊背景设置
    position:absolute
    top:0
    left:0
    z-index:-1
    filter:blur(10px)
  .detail
    position:fixed
    z-index:100
    width:100%
    height:100%
    overflow:auto//用hidden的话 当超过屏幕宽高会发生滚动
    background:rgb(7,17,27,0.8)
    .detail-wrapper // 这里是用css stickyfooter 布局 wrapper层最小高度100% 撑满屏幕
      min-height:100%
      .detail-main  //内容层底部留一个空间 不覆盖底部 给下面的X 留空间
        margin-top:64px
        padding-bottom:64px
    .detail-close //和wrapper平级的 由于是-64px 往上移动
      position:relative
      width:32px
      height:32px
      margin:-64px auto 0 auto
      clear:both
      font-size:32px

</style>
