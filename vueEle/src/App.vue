<template>
  <div>
   <v-header :seller="seller"></v-header>
    <div class="tab border-1px">
      <div class="tab-item">
        <router-link to="/goods">商品</router-link>
      </div>
      <div class="tab-item">
        <router-link to="/ratings">评论</router-link>
      </div>
      <div class="tab-item">
        <router-link to="/seller">商家</router-link>
      </div>
    </div>
    <div class="content">
      content 
    </div>
    <router-view/>
  </div>
</template>

<script type="text/ecmascript-6"> 
import Header from "./components/header/header.vue";

const ERR_OK=0; //定义个常量  因为后端nodejs返回给前端一个errno(webpack.dev.conf.js文件里)  前端ajax请求获取后跟后端返回
//errno 状态码对比 定义一个常量 方便以后维护 只需要改ERR_OK的值就行


export default {  
  data(){
    return {
      seller :{}
    }
  },
  created(){
    this.$http.get("/api/seller").then((response)=>{  //异步请求数据
      respose = response.body; //转换成json对象
      if(response.errno === ERR_OK){
        this.seller = response.data;
      }
      console.log(this.seller)
    })
  },
  components:{
    "v-header":Header
  }
}
</script>

<style lang="stylus">
@import "./common/stylus/mixin.styl"


  .tab
    display:flex
    width:100%
    height: 40px
    line-height:40px
    // border-bottom:1px solid rgba(7,17,27,0.1)
    border-1px(rgba(7,17,27,0.1))
    .tab-item 
      text-align:center
      flex:1
      & > a 
        display:block
        font-size:14px
        color:rgb(77,85,93)
        &.active
          color:rgb(240,20,20)
</style>
